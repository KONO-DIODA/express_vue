<template>
  <div class="header">
    <div class="home-icon">
      <el-icon size="30px" 
               @click="handleCollapse"
               :style="{ transform: isCollapse ? '' : 'rotate(180deg)'}"
      >
        <Expand />
      </el-icon>
      <span>首页</span>
    </div>
    <div class="user"
         @mouseenter="isShowUserinfo(1)"
         @mouseleave="isShowUserinfo(0)"
    >
      <img :src="userInfo.headImg" alt="">
      <div class="user-info" v-show="isShow">
        <div>{{ userInfo.name }}</div>
        <div @click="loginOut">退出登录</div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive, defineProps, onMounted } from 'vue'
import { getUserInfo } from '@/service'
import router from '@/router';
import { clearStoreCache } from '@/utils/const';

const { handleCollapse, isCollapse } = defineProps(["handleCollapse", "isCollapse"])
const isShow = ref(false)
const isShowUserinfo = (flag) => {
  isShow.value = flag === 1 ? true : false
}

// 获取用户信息
const userInfo = reactive({
  name: "",
  headImg: ""
})
// 网络请求接口
const fetchUserInfoData = async () => {
  const res = await getUserInfo()
  if (res?.data.name && res?.data.headImg) {
    userInfo.name = res.data.name
    userInfo.headImg = res.data.headImg
  }
}
// 页面初始化时即接口请求
onMounted(() => {
  fetchUserInfoData()
})

// 退出登录
const loginOut = () => {
  router.push("/login")
  localStorage.removeItem("token");
  sessionStorage.removeItem("power");
  // 退出登录清除pinia所有store
  clearStoreCache();
}

</script>

<style lang="less" scoped>
.user-info {
  z-index: 22;
  display: flex;
  flex-direction: column;
  position: absolute;
  right: 0;
  bottom: -72px;
  background-color: #fff;
  border: 5px;
  box-shadow: 0 4px 8px 0 rgb(7 17 27 / 10%);
  text-align: center;
  cursor: pointer;
  
  div:hover {
    color: #409eff;
  }

  div {
    padding: 10px;
  }
}

.header {
  position: relative;
  height: 100%;
  align-items: center;
  display: flex;
  justify-content: space-between;

  .home-icon {
    display: flex;
    align-items: center;

    span {
      margin-left: 10px;
    }
  }

  .user {
    display: flex;
    justify-content: center;
    width: 80px;

    img {
      width: 45px;
      height: 45px;
      border-radius: 50%;
    }
  }
}
</style>