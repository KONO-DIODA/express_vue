import { createRouter, createWebHashHistory } from "vue-router"

const router = createRouter({
  history: createWebHashHistory(),  // 选择hash路由
  routes: [
    {
      path: "/",
      redirect: "/login"
    },
    {
      path: "/home",
      component: () => import("@/views/home/home.vue"),
      meta: {
        isAuth: true
      }
    },
    {
      path: "/login",
      component: () => import("@/views/login/login.vue")
    },
    {
      path: "/register",
      component: () => import("@/views/register/register.vue")
    }
  ]
})

// 路由拦截
router.beforeEach((to, from, next) => {
  if (to.meta.isAuth) {
    if (localStorage.getItem("token")) {
      next()
    } else {
      ElMessage.error("请先登录账号")
    }
  } else {
    next()
  }
})

export default router