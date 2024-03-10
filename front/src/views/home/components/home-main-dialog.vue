<template>
  <div class="dialog">
    <el-dialog
      :modelValue="dialogShow"
      title="编辑"
      width="30%"
      center
      :show-close="false"
    >
      <el-form :model="editData" ref="ruleFormRef">
        <el-form-item label="图书标题" prop="title" required>
          <el-input v-model="editData.title"></el-input>
        </el-form-item>
        <el-form-item label="图书价格" prop="price" required>
          <el-input v-model="editData.price"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button @click="confirmClick(0)">取消</el-button>
          <el-button @click="submitForm(ruleFormRef)" type="primary">确认</el-button>
        </el-form-item>
      </el-form>
    </el-dialog>
  </div>
</template>

<script setup>
import { reactive, ref } from 'vue'

const { dialogShow, message, confirmClick } = defineProps(["dialogShow", "message", "confirmClick"])
// 编辑组件维护数据
const editData = reactive({
  title: message.title,
  price: message.price,
  id: message.id
})
// 表单校验规则
const ruleFormRef = ref()
const submitForm = async (formEl) => {
  if (!formEl) return
  await formEl.validate((valid, fields) => {
    if (valid) {
      confirmClick({
        title: editData.title,
        price: editData.price,
        id: editData.id
      })
    } else {
      console.log("error message", fields)
    }
  })
}
</script>

<style lang="less" scoped>
.dialog-footer button:first-child {
  margin-right: 10px;
}

:deep(.el-form-item__label) {
  width: 80px !important;
}

:deep(.el-form-item__content) {
  justify-content: center;
  margin-left: 0 !important;
}
</style>