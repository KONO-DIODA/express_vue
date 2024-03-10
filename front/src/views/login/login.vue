<template>
  <div class="login">
    <div class="background-picture"></div>
    <div class="login-ontainer">
      <login-container></login-container>
    </div>
  </div>
</template>

<script setup>
import loginContainer from './components/login-container.vue';

</script>

<style lang="less" scoped>
.login {
  height: 100%;
  .background-picture {
    background: url("@/assets/login-bj2.jpeg");
    width: 100%;
    height: 100%;
    position: fixed;
    background-size: 100% 100%;
  }
}
</style>