import { getUserList } from "@/service";
import { defineStore } from "pinia";

const useUserStore = defineStore("user", {
  state: () => ({
    list: [],
    power: 0
  }),
  getters: {
    
  },
  actions: {
    async fetchUserList() {
      if (this.list.length > 0) return;

      const res = await getUserList();
      this.list = res.data.list;
    }
  }
});

export default useUserStore;