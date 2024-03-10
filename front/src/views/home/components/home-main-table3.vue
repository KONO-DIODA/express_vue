<template>
  <div class="main">
    <el-table :data="userList" style="width: 100%">
      <el-table-column type="index" :index="indexMethod" width="220" />
      <el-table-column prop="name" label="名字" width="220" />
      <el-table-column prop="status" label="状态" width="220" :formatter="statusFormatter" />
      <el-table-column prop="operation" label="操作">
        <template #default="scope">
          <el-button type="primary" size="small" @click="StartOrStophandle(scope.$index, scope.row)"
            >{{ status(scope.row.status) }}</el-button
          >
          <el-popconfirm title="Are you sure to delete this?" @confirm="deleteHandle(scope.row)">
            <template #reference>
              <el-button type="danger" size="small">删除</el-button>
            </template>
          </el-popconfirm>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script setup>
import useUserStore from '@/stores/modules/user';
import { storeToRefs } from 'pinia';
import { TIP_MESSAGE } from "@/utils/const";
import { ElMessage } from 'element-plus';
import { getUserDelete, getUserUpdateStatus } from '@/service';


const userStore = useUserStore();
// 用户数据和类型
const { list: userList } = storeToRefs(userStore);
// 用户状态
const status = (status) => {
  return status === 1 ? "禁用" : "启用";
};

const statusFormatter = (row) => {
  return row.status === 1 ? "启用" : "禁用";
}
const indexMethod = (index) => {
  return index + 1;
}


// 启用/禁用
const StartOrStophandle = (index, row) => {
  userList.value = userList.value.map(item => {
    if (item.id === row.id) {
      item.status = row.status === 1 ? 0 : 1;
    }
    return item;
  });
  fetchUserUpdateStatus({
    id: row.id,
    status: row.status
  });
}

const fetchUserUpdateStatus = async(query) => {
  const res = await getUserUpdateStatus(query);
  if (res?.message) {
    ElMessage({
      message: res?.message,
      type: res?.code === 0 ? "success" : "warning"
    });
  }
}



// 删除
const fetchClientDelete = async(query) => {
  const res = await getUserDelete(query);
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

  userList.value = userList.value.filter(item => {
    return item.id !== row.id;
  })
  fetchClientDelete({
    id: row.id
  });
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