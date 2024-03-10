<template>
  <div class="table">
    <el-table :data="list"
              style="width: 100%"
              :row-class-name="tableRowClassName"
    >
      <el-table-column prop="courseImg" label="图片">
        <template #default="scope">
          <img :src="scope.row.course_img" class="courseImg-img">
        </template>
      </el-table-column>
      <el-table-column prop="title" label="标题" />
      <el-table-column prop="price" label="价格" />
      <el-table-column prop="point" label="评分" />
      <el-table-column label="操作">
        <template #default="scope">
          <el-button type="primary" @click="editClick(scope.row)">
            编辑
          </el-button>
          <el-popconfirm title="是否确定删除该图书?" @confirm="deleteHandle(scope.row.id)">
            <template #reference>
              <el-button type="danger">删除</el-button>
            </template>
          </el-popconfirm>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script setup>

const emits = defineEmits(["editClick"])
const editClick = (value) => {
  emits("editClick", value)
}
const { list, deleteHandle } = defineProps(["list", "deleteHandle"])
// 定义每行课程的区分颜色
const tableRowClassName = ({ rowIndex }) => {
  if (rowIndex % 2 === 0) {
    return "warning-row"
  } else {
    return ""
  }
}
</script>

<style lang="less" scoped>
.courseImg-img {
  width: 150px;
  height: 100px;
}
</style>