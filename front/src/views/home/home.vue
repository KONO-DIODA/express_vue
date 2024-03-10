<template>
  <div class="home">
    <el-container>
      <el-aside><home-aside :isCollapse="isCollapse"/></el-aside>
      <el-container>
        <el-header>
          <home-header :handleCollapse="handleCollapse"
                       :isCollapse="isCollapse"
          />
        </el-header>
        <el-main><home-main/></el-main>
      </el-container>
    </el-container>
  </div>
</template>

<script setup>
import homeAside from './components/home-aside.vue'
import homeHeader from './components/home-header.vue'
import homeMain from './components/home-main.vue'
import { ref } from 'vue';

let isCollapse = ref(false)
const handleCollapse = () => {
  isCollapse.value = !isCollapse.value
}

</script>

<style lang="less" scoped>
.el-aside {
  width: auto;
  background-color: #545c64;
  width: auto;
  overflow: hidden;
}

.el-container {
  height: 100vh;
}

.el-main {
  display: flex;
}

.el-header {
  // padding: 0 20px 0 0;
  background-color: #fff;
}
</style>