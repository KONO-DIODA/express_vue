<template>
  <div class="register">
    <div class="background-picture"></div>
    <div class="register-ontainer">
      <register-container></register-container>
    </div>
  </div>
</template>

<script setup>
import registerContainer from './components/register-container.vue'

</script>

<style lang="less" scoped>
.register {
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