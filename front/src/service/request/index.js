import axios from "axios"
import { ElMessage } from "element-plus"
import { baseURL, timeout } from "./config"
import router from "@/router"

class hyRequest {
  constructor(baseURL, timeout = 2000) {
    this.instance = axios.create({
      baseURL: baseURL,
      timeout: timeout
    })
    // 阻断器
    this.instance.interceptors.request.use(config => {
      // 非登录/注册的页面的请求需要token
      if (config.url.indexOf("register") < 0 && config.url.indexOf("login") < 0) {
        config.headers.authorization = localStorage.getItem("token")
      }
      return config
    }, err => {
      return err
    })
    this.instance.interceptors.response.use(res => {
      const { code, message } = res.data
      if (code === 0) {
        // 不允许返回res.data
        return res
      }
      if (code === 1) {
        ElMessage({
          message: message,
          type: "error"
        })
      }
      if (message === "身份认证失败") {
        router.push("/login")
      }
    }, err => {
      return err
    })
  }

  request(config) {
    return new Promise((resolve, reject) => {
      this.instance.request(config).then(res => {
        // 返回的就是解除axios封装后的data
        resolve(res?.data);
      }).catch(err => {
        reject(err)
      })
    })
  }
  get(config) {
    return this.request({...config, method: "get"})
  }
  post(config) {
    return this.request({...config, method: "post"})
  }
}

export default new hyRequest(baseURL, timeout)
