import hyRequest from '@/service/request/index'

export const getUserList = (data) => {
  return hyRequest.get({
    url: "/api/v1/user/userList",
  }) 
}