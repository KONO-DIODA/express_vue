<template>
  <div class="aside">
    <el-menu class="el-menu-vertical-demo"
             default-active="1-1"
             active-text-color="#ffd04b"
             background-color="#545c64"
             text-color="#fff"
             :collapse="isCollapse"
    >
      <div class="title-icon">
        <img src="@/assets/home-title2.png" alt="">
        <span>图书管理系统</span>
      </div>
      <el-sub-menu index="1">
        <template #title>
          <el-icon><Document /></el-icon>
          <span>图书管理</span>
        </template>
        <el-menu-item index="1-1" @click="courseHandle('front')">{{ classCategory.FRONT_CLASS }}</el-menu-item>
        <el-menu-item index="1-2" @click="courseHandle('back')">{{ classCategory.BACK_CLASS }}</el-menu-item>
        <el-menu-item index="1-3" @click="courseHandle('all')">{{ classCategory.ALL_CLASS }}</el-menu-item>
      </el-sub-menu>
      <el-sub-menu index="2">
        <template #title>
          <el-icon><User /></el-icon>
          <span>用户管理</span>
        </template>
          <el-menu-item index="2-1" @click="clientHandle(0)">{{ userCategory.COMMON_USER }}</el-menu-item>
          <el-menu-item index="2-2" @click="clientHandle(1)">{{ userCategory.VIP_USER }}</el-menu-item>
          <el-menu-item index="2-3" @click="clientHandle(2)">{{ userCategory.SVIP_USER }}</el-menu-item>
      </el-sub-menu>
      <el-sub-menu index="3"  v-if="isShow">
        <template #title>
          <el-icon><Avatar /></el-icon>
          <span>员工管理</span>
        </template>
        <el-menu-item index="3-1" @click="employeeHandle">员工管理</el-menu-item>
      </el-sub-menu>
    </el-menu>
  </div>
</template>

<script setup>
import { storeToRefs } from 'pinia'
import { defineProps } from 'vue'
import useCourseStore from '@/stores/modules/course'
import {
  FRONT_CLASS,
  BACK_CLASS,
  ALL_CLASS,
  COMMON_USER,
  VIP_USER,
  SVIP_USER,
} from '@/utils/const'
import useCommonStore from "@/stores/modules/common";
import useClientStore from '@/stores/modules/client';
import useUserStore from '@/stores/modules/user';

const commonStore = useCommonStore();
const { menuTheme } = storeToRefs(commonStore);// 1课程，2用户
const userStore = useUserStore();

const powerInSession = sessionStorage.getItem("power");
const isShow = powerInSession === '1';


const classCategory = {
  FRONT_CLASS,
  BACK_CLASS,
  ALL_CLASS
};
const userCategory = {
  COMMON_USER,
  VIP_USER,
  SVIP_USER
};
const courseStore = useCourseStore()
const { data: courseData, category: courseType } = storeToRefs(courseStore)
const { isCollapse } = defineProps(["isCollapse"])

const courseHandle = (type) => {
  courseData.value.page = 1;
  courseType.value = type;
  if (menuTheme.value !== 1) {
    menuTheme.value = 1;
  }
}

const clientStore = useClientStore();
const { data: clientData, type: clientType } = storeToRefs(clientStore);

const clientHandle = (type) => {
  clientData.value.page = 1;
  clientType.value = type; // 0普通，1会员，2svip
  if (menuTheme.value !== 2) {
    menuTheme.value = 2;
  }
  clientStore.fetchClientList({
    type
  });
}

const employeeHandle = () => {
  if (menuTheme.value !== 3) {
    menuTheme.value = 3;
  }
  userStore.fetchUserList();
}

</script>

<style lang="less" scoped>
.el-radio-button__inner {
  padding: 0;
}

.el-menu--collapse {
  border: none;
}

.el-menu:not(.el-menu--collapse) {
  width: 200px;
  min-height: 400px;
  border: none;
}

.title-icon {
  display: flex;
  align-items: center;
  font-weight: 600;
  height: 60px;
  background-color: #fff;
  white-space: nowrap;
  padding-left: 15px;

  img {
    width: 40px;
    height: 40px;
    border-radius: 10%;
    margin-right: 10px;
  }
}
</style>
