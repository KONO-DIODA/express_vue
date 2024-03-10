<template>
  <div class="main">
    <el-table :data="tableData" style="width: 100%">
      <el-table-column prop="index" label="序号" width="120" />
      <el-table-column prop="name" label="名字" width="220" />
      <el-table-column prop="sex" label="性别" width="120" />
      <el-table-column prop="card_number" label="电话号码" width="180" />
      <el-table-column prop="type" label="类型" width="120" :formatter="typeFormatter" />
      <el-table-column prop="status" label="状态" width="120" :formatter="statusFormatter" />
      <el-table-column flex="1" prop="books" label="订阅书籍" />
      <el-table-column prop="operation" label="操作" width="260">
        <template #default="scope">
          <el-button type="primary" size="small" @click="StartOrStophandle(scope.$index, scope.row)"
            >{{ status(scope.row.status) }}</el-button
          >
          <el-button type="primary" size="small" @click="edictHandle(scope.row)">编辑</el-button>
          <el-popconfirm title="Are you sure to delete this?" @confirm="deleteHandle(scope.row)">
            <template #reference>
              <el-button type="danger" size="small">删除</el-button>
            </template>
          </el-popconfirm>
        </template>
      </el-table-column>
    </el-table>
    <home-main-pagination class="pagination" :currentChange="currentChange"/>
    <el-dialog
      v-model="isShow"
      title="编辑"
      width="30%"
      center
      :show-close="false"
    >
      <el-form :model="currentEdict" ref="ruleFormRef">
        <el-form-item label="名字" prop="name" required>
          <el-input v-model="currentEdict.name"></el-input>
        </el-form-item>
        <el-form-item label="性别" prop="sex" required>
          <el-input v-model="currentEdict.sex"></el-input>
        </el-form-item>
        <el-form-item label="电话号码" prop="card_number" required>
          <el-input v-model="currentEdict.card_number"></el-input>
        </el-form-item>
        <el-form-item label="类型" prop="type" required>
          <el-select v-model="currentEdict.type" placeholder="普通用户">
            <el-option label="普通用户" value="+0" />
            <el-option label="会员用户" value="+1" />
            <el-option label="SVIP用户" value="+2" />
          </el-select>
        </el-form-item>
        <el-form-item label="订阅书籍" prop="books" required>
          <el-input v-model="currentEdict.books"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button @click="isShow = false">取消</el-button>
          <el-button @click="submitClick(ruleFormRef)" type="primary">确认</el-button>
        </el-form-item>
      </el-form>
    </el-dialog>
  </div>
</template>

<script setup>
import homeMainPagination from './home-main-pagination.vue';
import useClientStore from '@/stores/modules/client';
import { storeToRefs } from 'pinia';
import { clientCategory, clientPageSize, TIP_MESSAGE, userCategory, clearCacheUtil } from "@/utils/const";
import { computed, reactive, ref } from 'vue';
import { ElMessage } from 'element-plus';
import { getClientDelete, getClientUpdateStatus, getClientUpdate } from '@/service';


const clientStore = useClientStore();
// 用户数据和类型
const { data: clientData, type: clientType } = storeToRefs(clientStore);
// 用户状态
const status = (status) => {
  return status === 0 ? "禁用" : "启用";
};
// 编辑弹窗
const isShow = ref(false);
const currentEdict = ref();
const ruleFormRef = ref();


const tableData = computed(() => {
  return clientData.value.list[clientCategory[clientType.value]][clientData.value.page - 1];
});

const typeFormatter = (row) => {
  return userCategory[row.type];
}
const statusFormatter = (row) => {
  return row.status === 1 ? "启用" : "禁用";
}


// 上一页/下一页
const currentChange = (btn = "") => {
  if (btn === "pre") {
    if (clientData.value.page > 1) {
      clientData.value.page--;
    } else {
      ElMessage({
        message: TIP_MESSAGE.FIRST_PAGE,
        type: "warning",
        showClose: true
      });
    }
  } else if (btn === "next") {
    // const currentPages = clientData.value.list[clientCategory[clientType.value]].length;
    const currentTotal = clientData.value.page * clientPageSize; // n页总数
    if (clientData.value.total["total"] > currentTotal) {
      clientData.value.page++;
    } else {
      ElMessage({
        message: TIP_MESSAGE.LAST_PAGE,
        type: "warning",
        showClose: true
      });
    }
  }
  clientStore.fetchClientList({
    page: clientData.value.page
  })
}

// 启用/禁用
const StartOrStophandle = (index, row) => {
  clientData.value.list[clientCategory[clientType.value]][clientData.value.page - 1] = clientData.value.list[clientCategory[clientType.value]][clientData.value.page - 1].map(item => {
    if (item.id === row.id) {
      item.status = row.status === 1 ? 0 : 1;
    }
    return item;
  });
  fetchClientUpdateStatus({
    id: row.id,
    status: row.status
  });
}

const fetchClientUpdateStatus = async(query) => {
  const res = await getClientUpdateStatus(query);
  if (res?.message) {
    ElMessage({
      message: res?.message,
      type: res?.code === 0 ? "success" : "warning"
    });
  }
}

const fetchClientUpdate = async(query) => {
  const res = await getClientUpdate(query);
  if (res?.message) {
    ElMessage({
      message: res?.message,
      type: res?.code === 0 ? "success" : "warning"
    });
  }
}

// 编辑
const formData = reactive({});

const edictHandle = (row) => {
  if (isShow.value) return;
  isShow.value = true;
  currentEdict.value = row;
  // console.log(isShow.value);
  // console.log(currentEdict.value);
  
  // formData.value = {
  //   id: currentEdict.value.id,
  //   name: currentEdict.value.name,
  //   sex: currentEdict.value.sex,
  //   card_number: currentEdict.value.card_number,
  //   type: currentEdict.value.userType,
  //   books: currentEdict.value.books
  // };
}


const confirmClick = (value) => {
  clientData.value.list[clientCategory[clientType.value]][clientData.value.page - 1] = clientData.value.list[clientCategory[clientType.value]][clientData.value.page - 1].map(item => {
    if (item.id === value.id) {
      // let flag = false;
      // item.name !== value.name && (flag = true && (item.name = value.name));
      // item.sex !== value.sex && (flag = true && (item.sex = value.sex));
      // item.card_number !== value.card_number && (flag = true && (item.card_number = value.card_number));
      // item.type !== value.type && (flag = true && (item.type = value.type));
      // item.books !== value.books && (flag = true && (item.books = value.books));
      // flag && ElMessage({
      //   message: TIP_MESSAGE.NO_UPDATE_FORM,
      //   type: "warning"
      // });
      item.name = value.name;
      item.sex = value.sex;
      item.card_number = value.card_number;
      item.type = value.type;
      item.books = value.books;
      console.log(item);
    }
    return item;
  });
  // console.log(clientData.value.list[clientCategory[clientType.value]][clientData.value.page - 1]);
  console.log("value", value.id);

  fetchClientUpdate({
    id: value.id,
    name: value.name,
    sex: value.sex,
    card_number: value.card_number,
    type: value.type,
    books: value.books,
  })

  clearCacheUtil(); // 清理缓存
  clientStore.fetchClientList({
    page: clientData.value.page,
  })
  isShow.value = false;
}
const submitClick = async (formEl) => {
  if (!formEl) return;
  await formEl.validate((valid, fields) => {
    if (valid) {
      formData.value = {
        id: currentEdict.value.id,
        name: currentEdict.value.name,
        sex: currentEdict.value.sex,
        card_number: currentEdict.value.card_number,
        type: currentEdict.value.type,
        books: currentEdict.value.books
      };
      console.log(formData.value);
      confirmClick(formData.value);
    } else {
      console.log("error message", fields);
    }
  })
}

// 删除
const fetchClientDelete = async(query) => {
  const res = await getClientDelete(query);
  if (res?.message) {
    ElMessage({
      message: res?.message,
      type: res?.code === 0 ? "success" : "warning"
    });
  }
}
const deleteHandle = (row) => {
  if (row.status === 1) {
    ElMessage({
      message: TIP_MESSAGE.STOP_DELETE_WHEN_START,
      type: "error"
    })
    return;
  }
  
  clearCacheUtil(); // 清理缓存
  fetchClientDelete({
    id: row.id
  });
  clientStore.fetchClientList({
    page: clientData.value.page
  })
}


</script>

<style lang="less" scoped>

.main {
  display: flex;
  flex-direction: column;
}

.pagination {
  position: fixed;
  bottom: 5%;
  left: 50%;
}

.dialog-footer button:first-child {
  margin-right: 10px;
}

:deep(.el-form-item__label) {
  width: 80px !important;
}

:deep(.el-form-item__content) {
  justify-content: flex-start;
  margin-left: 0 !important;
}
</style>