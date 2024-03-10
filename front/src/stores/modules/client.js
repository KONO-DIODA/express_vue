import { getClientList } from "@/service";
import { defineStore } from "pinia";
import { clientCategory, userCategory } from "@/utils/const";

const useClientStore = defineStore("client", {
  state: () => ({
    data: {
      list: {
        common: [],
        vip: [],
        svip: []
      },
      page: 1,
      total: 1,
    },
    type: 0 // 0普通，1会员，2svip
  }),
  getters: {

  },
  actions: {
    async fetchClientList(query) {
      const type = query?.type || this.type;
      const page = query?.page || 1;
      const size = query?.pageSize || 16;
      // 检查缓存
      const resCache = this.data.list[clientCategory[type]][page - 1];
      if (resCache && resCache.length > 0) {
        return resCache;
      }
      const res = await getClientList({
        type,
        page,
        size
      });
      const getList = res?.data?.list.filter(item => {
        return item.type === type;
      });
      if (getList.length > 0) {
        this.data.list[clientCategory[type]].push([...getList]);
        this.data.total = res?.data.total[0];
        // 给每条数据添加一个index
        this.data.list[clientCategory[type]][page - 1] = this.data.list[clientCategory[type]][page - 1].map((item, index) => {
          return {
            ...item,
            index: (page - 1) * size + index + 1,
            userType: userCategory[type],
          };
        });
      }
    }
  }
})

export default useClientStore;