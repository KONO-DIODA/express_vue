<template>
    <div class="app">
        <router-view></router-view>
    </div>
</template>

<script setup>
import { debounce } from "@/utils/const";

const _ResizeObserver = window.ResizeObserver;
window.ResizeObserver = class ResizeObserver extends _ResizeObserver {
  constructor(callback) {
    callback = debounce(callback, 16);
    super(callback);
  }
}
</script>

<style lang="less" scoped>

</style>import { debounce } from './utils/const';
import { from } from 'core-js/core/array';

