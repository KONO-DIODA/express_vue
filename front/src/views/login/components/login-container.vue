<template>
  <div class="login-container">
    <h1>图书管理系统</h1>
    <!-- @keyup.enter="onLogin" 监听键盘enter点击 -->
    <el-form class="login-form" 
            :model="userInfo"
            :rules="rules"
            @keyup.enter="onLogin"
            ref="refForm"
    >
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
      <el-form-item prop="password">
        <el-input placeholder="请输入密码" 
                  v-model="userInfo.password"
                  show-password
        >
          <template #prepend>
            <el-icon><Key /></el-icon>
          </template>
        </el-input>
      </el-form-item>
      <el-button type="primary"
                 class="login-submit"
                 @click="onLogin"
      >
        登录
      </el-button>
      <div class="login-register">
        <span class="text"
              @click="goRegister">
          注册
        </span>
      </div>
    </el-form>
  </div>  
</template>

<script setup>
import { ref, reactive } from 'vue'
import router from '@/router'
import { getLogin } from '@/service'
// 获取元素-html实例
const refForm = ref()
// 表单数据声明
const userInfo = reactive({
  userName: "admin",
  password: ""
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
  }]
}

// 登录的方法
const onLogin = () => {
  // 任意表单项校验后触发
  refForm.value.validate((value) => {
    if (value) {
      // 校验成功
      fetchLoginData()
    }
  })
}
// 登录接口
const fetchLoginData = async () => {
  // 网络请求，后端返回数据
  const res = await getLogin({
    userName: userInfo.userName,
    password: userInfo.password
  })
  if (res?.token) {
    localStorage.setItem("token", res.token);
    /**
     * 由于刷新页面会让pinia重置，从而导致原来存储在pinia中的用户权限丢失（在登录时记录其中）
     * 即管理员权限被重置为普通用户权限
     * 因此需要在登录时将用户权限数据存储在sessionStorage中，也可存放于localStorge中，在退出登录时将相关记录清除
     */
    sessionStorage.setItem("power", res.power);
    // 消息提示
    ElMessage({
      message: "登录成功",
      type: 'success',
    })
    router.push("/home")
  }
}
// 跳转注册
const goRegister = () => {
  router.push("/register")
}

</script>

<style lang="less" scoped>
.login-container {
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
  .login-form {
    .login-submit {
      font-size: 16px;
      width: 100%;
      height: 50px;
      border-radius: 20px;
      margin-bottom: 10px;
    }
    .login-register {
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