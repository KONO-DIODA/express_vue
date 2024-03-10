import { storeToRefs } from 'pinia';
import useClientStore from '../stores/modules/client';
import useUserStore from '../stores/modules/user';
import useCourseStore from '../stores/modules/course';
import useCommonStore from '../stores/modules/common';


export const FRONT_CLASS = "前端图书";
export const BACK_CLASS = "后端图书";
export const ALL_CLASS = "全栈图书";
export const COMMON_USER = "普通用户";
export const VIP_USER = "会员用户";
export const SVIP_USER = "SVIP用户";
export const userCategory = [
  '普通用户',
  '会员用户',
  'SVIP用户'
];

export const TIP_MESSAGE = {
  FIRST_PAGE: "已经是第一页了",
  LAST_PAGE: "已经是最后一页了",
  STOP_DELETE_WHEN_START: "启用状态不能删除",
  NO_UPDATE_FORM: "没有发现更多内容"
}

export const pageSize = 5;
export const clientPageSize = 16;
export const clientCategory = [
  'common',
  'vip',
  'svip'
];

// 清理缓存utils
export const clearCacheUtil = () => {
  const clientStore = useClientStore();
  const { data, type } = storeToRefs(clientStore);

  const curPage = data.value.page;
  const list = data.value.list;
  for (let key in list) {
    if (key === type) {
      list[key].splice(curPage - 1);
    } else {
      list[key] = [];
    }
  }
}

// 清理store数据(退出登录)
export const clearStoreCache = () => {
  const courseStore = useCourseStore();
  const clientStore = useClientStore();
  const userStore = useUserStore();
  const commonStore = useCommonStore();
  courseStore.$reset();
  clientStore.$reset();
  userStore.$reset();
  commonStore.$reset();
}

/**
 * 防抖
 * @param {*} fn 
 * @returns 
 */
export const debounce = (fn, delay) => {
  let timer = null;
  return (...args) => {
    timer && clearTimeout(timer);
    timer = setTimeout(() => {
      fn.call(this, ...args);
      timer = null;
    }, delay);
  }
}

/**
 * 节流
 * @param {*} fn 
 * @param {*} delay 
 * @returns 
 */
export const throttle = (fn, delay) => {
  let start = 0;
  let timer = null;


  return (...args) => {
    const curTime = new Date().getTime();
    if (curTime - start >= delay) {
      start = new Date().getTime();
      fn.call(this, ...args);
    } else {      
      timer = setTimeout(() => {
        start = new Date().getTime();
        fn.call(this, ...args);
      }, delay - (curTime - start));
    }
  }
} 