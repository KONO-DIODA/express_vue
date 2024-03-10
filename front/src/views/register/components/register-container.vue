<template>
  <div class="register-container">
    <h1>课程管理系统</h1>
    <el-form class="register-form" 
            :model="userInfo"
            :rules="rules"
            @keyup.enter="onRegister"
            ref="refForm"
    >
      <!-- 账号 -->
      <!-- prop="userName"  对于校验规则rules中的要求 -->
      <el-form-item prop="userName">
        <el-input placeholder="请输入用户名"
                  v-model="userInfo.userName"
        >
          <template #prepend>
            <el-icon><Avatar /></el-icon>
          </template>
        </el-input>
      </el-form-item>
      <!-- 密码 -->
      <el-form-item prop="password" ref="pwdRef">
        <el-input placeholder="请输入密码" 
                  v-model="userInfo.password"
                  show-password
        >
          <template #prepend>
            <el-icon><Key /></el-icon>
          </template>
        </el-input>
      </el-form-item>
      <!-- 确认密码 -->
      <el-form-item prop="pwdAgain">
        <el-input placeholder="请再次输入密码" 
                  v-model="userInfo.pwdAgain"
                  show-password
        >
          <template #prepend>
            <el-icon><Key /></el-icon>
          </template>
        </el-input>
      </el-form-item>
      <!-- 勾选协议 -->
      <el-checkbox v-model="checkProtocol" 
                   label="已阅读并同意《xxx协议》" 
                   size="small"
                   class="check-box"
      />
      <!-- 注册 -->
      <el-button type="primary"
                 class="register-submit"
                 @click="onRegister"
      >
        注册
      </el-button>
      <!-- 登录 -->
      <div class="register-login">
        <span class="text"
              @click="goLogin">
          已有账号去登录
        </span>
      </div>
    </el-form>
  </div>  
</template>

<script setup>
import { ref, reactive } from 'vue';
import router from '@/router';
import { getRegister } from '@/service'

// 获取元素-html实例
const refForm = ref()
// 表单数据声明
const userInfo = reactive({
  userName: "",
  password: "",
  pwdAgain: ""
})
// 表单数据校验规则
const rules = {
  userName: [{
    required: "true", // 必填
    trigger: "blur",  // 失去焦点即进行验证
    message: "用户名不能为空"
  }],
  password: [{
    required: "true",
    trigger: "blur",
    message: "密码不能为空"
  }],
  pwdAgain: [{
    required: "true",
    trigger: "blur",
    message: "密码不能为空"
  }]
}
// 勾选协议
const checkProtocol = ref(false)
// 登录的方法
const onRegister = () => {
  // 任意表单项校验后触发
  refForm.value.validate((value) => {
    // 判断密码两次输入是否相同
    const isEqual = userInfo.password === userInfo.pwdAgain
    if (value) {
      if (!isEqual) {
        // refForm.value.resetFields() // 全部重置:model中绑定的值
        // 手动重置
        userInfo.password = ""
        userInfo.pwdAgain = ""
        checkProtocol.value = false
        ElMessage.error("密码确认失败，请重新输入")
      } else {
        if (!checkProtocol.value) {
          ElMessage.error("请阅读并同意《xxx协议》")
        } else {
          // 校验成功
          fetchRegisterData()
        }
      }
    }
  })
}
// 注册接口
const fetchRegisterData = async () => {
  // 接口调用
  const res = await getRegister({
    userName: userInfo.userName,
    password: userInfo.password
  })
  // 注册成功
  if (res?.code === 0) {
    ElMessage({
      message: "注册成功",
      type: 'success',
    })
    router.push("/login")
  }
}
// 跳转登录
const goLogin = () => {
  router.push("/login")
}

</script>

<style lang="less" scoped>
.register-container {
  position: fixed;
  z-index: 1;
  width: 20%;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  min-height: 200px;
  text-align: center;
  background-color: #fff;
  border-radius: 10px;
  padding: 20px;
  h1 {
    font-size: 24px;
    transition: all 1s;
    font-weight: bold;
    margin-bottom: 36px;
  }
  .check-box {
    width: 100%;
    margin-bottom: 10px;
  }
  .register-form {
    .register-submit {
      font-size: 16px;
      width: 100%;
      height: 50px;
      border-radius: 20px;
      margin-bottom: 10px;
    }
    .register-login {
      width: 100%;
      font-size: 12px;
      margin: 0 auto;
      .text {
        cursor:pointer; 
      }
    }
    :deep(.el-input-group__prepend) {
      padding: 0 10px;
    }
  }
}
</style>