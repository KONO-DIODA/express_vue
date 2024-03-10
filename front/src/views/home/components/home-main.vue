<template>
  <!-- 图书管理 -->
  <template v-if="menuTheme === 1">
    <div class="main">
      <!-- 搜索框 -->
      <el-form>
        <el-form-item>
          <el-input v-model="inputValue" placeholder="请输入内容"></el-input>
        </el-form-item>
        <el-button type="primary" @click="handleClick">搜索</el-button>
      </el-form>
      <home-main-table :list="courserList" 
                      @editClick="editClick"
                      :deleteHandle="deleteHandle"
      />
      <home-main-pagination :currentChange="currentChange" />
    </div>
    <!-- 编辑 -->
    <home-main-dialog v-if="dialogShow"
                      :dialogShow="dialogShow" 
                      :message="courseItemState.message"
                      :confirmClick="confirmClick"
    />
  </template>
  <!-- 用户管理 -->
  <template v-else-if="menuTheme === 2">
    <home-main-table2 />
  </template>
  <!-- 员工管理 -->
  <template v-else-if="menuTheme === 3">
    <home-main-table3 />
  </template>
</template>

<script setup>
import { reactive, ref, computed, onMounted, watch } from 'vue'
import homeMainTable from './home-main-table.vue'
import homeMainDialog from './home-main-dialog.vue'
import homeMainPagination from './home-main-pagination.vue'
import homeMainTable2 from './home-main-table2.vue';
import homeMainTable3 from './home-main-table3.vue';
import useCourseStore from '@/stores/modules/course'
import { storeToRefs } from 'pinia'
import { getCourseChange, getCourseDelete } from '@/service'
import { ElMessage } from 'element-plus'
import useCommonStore from "@/stores/modules/common";

const commonStore = useCommonStore();
const { menuTheme } = storeToRefs(commonStore);// 1课程，2用户

const courseStore = useCourseStore()
const { data, category } = storeToRefs(courseStore)


// 初始化
onMounted(() => {
  courseStore.fetchCourseListData({
    category: category.value,
    page: 1
  })
})
watch(category, () => {
  courseStore.fetchCourseListData({
    category: category.value,
    page: data.value.page
  })
})
// 搜索框的逻辑
const inputValue = ref("")
const courserList = computed(() => {
  return data.value.list?.filter((item) => {
    return item.title.indexOf(inputValue.value) >= 0
  })
})
const handleClick = () => {
  if (inputValue.value) {
    ElMessage({
      message: "查询成功",
      type: "success",
      showClose: true
    })
  } else {
    ElMessage({
      message: "请输入搜索内容",
      type: "error",
      showClose: true
    })
  }
}


// 编辑
const fetchCourseChange = async (query) => {
  const { title, price, id } = query
  const res = await getCourseChange({
    title,
    price,
    id
  })
  if (res?.message) {
    ElMessage({
      message: res.message,
      type: "success"
    })
  }
}
const courseItemState = reactive({
  message: {}
})
const dialogShow = ref(false)
const isShowDialog = (show) => {
  dialogShow.value = show
}
const editClick = (value) => {
  isShowDialog(true)
  courseItemState.message = value
}
// 取消/确定按钮
const confirmClick = (value) => {
  if (value === 0) {
    isShowDialog(false)
  } else if (value.title !== courseItemState.message.title || value.price !== courseItemState.message.price) {
    data.value.list.map((item) => {
      if (item.id === value.id) {
        item.title = value.title
        item.price = value.price
      }
    })
    // 修改接口调用
    fetchCourseChange({
      title: value.title,
      price: value.price,
      id: value.id
    })
    isShowDialog(false)
  } else {
    ElMessage({
      showClose: true,
      message: "没有发现更多内容",
      type: "warning"
    })
    isShowDialog(false)
  }
}

// 删除
const fetchCourseDelete = async (query) => {
  const res = await getCourseDelete(query)
  if (res?.message) {
    ElMessage({
      message: res.message,
      type: "success"
    })
  }
  
  const totalPage = Math.ceil(data.value.total["total"] / 5)
  // 前n-1页删除
  if (data.value.list.length < 5 && data.value.page < totalPage ) {
    courseStore.fetchCourseListData({
      category: category.value,
      page: data.value.page
    })
  }
  // 第n页删除
  // 当前页数据清空，重置到第一页
  if (data.value.list.length === 0 && data.value.page > 1) {
    courseStore.fetchCourseListData({
      category: category.value,
      page: 1
    })
  }
}
const deleteHandle = (value) => {
  if (value) {
    // 筛选
    data.value.list = data.value.list.filter((item) => {
      return item.id != value
    })
    // 删除接口
    fetchCourseDelete({ id: value })
  }
}

// 翻页
const currentChange = (value) => {  
  if (value === "pre") {
    if (data.value.page > 1) {
      data.value.page--
    } else {
      ElMessage({
        message: "已经是第一页了",
        type: "warning",
        showClose: true
      })
    }
  }
  if (value === "next") {
    if (data.value.page < Math.ceil(data.value.total["total"]/5)) {
      data.value.page++
    } else {
      ElMessage({
        message: "已经是最后一页了",
        type: "warning",
        showClose: true
      })
    }
  }
  // 请求课程的接口
  courseStore.fetchCourseListData({
    category: category.value,
    page: data.value.page
  })
}
</script>

<style lang="less" scoped>
.el-form {
  display: flex;
}

.main {
  background-color: #fff;
  padding: 20px;
  flex: 1;
  display: flex;
  flex-direction: column;

  .input-with-select {
    width: 400px;
    margin-bottom: 40px;
  }
}

:deep(.el-table__header-wrapper) {
  position: fixed;
  z-index: 20;
}

:deep(.el-table__inner-wrapper) {
  overflow: hidden;
}

:deep(.el-table__body-wrapper) {
  margin-top: 40px;
}

:deep(.el-input__inner) {
  width: 300px;
  margin-right: 10px;
}

:deep(.warning-row) {
  --el-table-tr-bg-color: var(--el-color-warning-light-9) !important;
  height: 140px !important;
}

.table {
  height: 80vh;
  width: 85vw;
  overflow: hidden;
  overflow-y: scroll;
}

.table::-webkit-scrollbar {
  display: none
}
</style>