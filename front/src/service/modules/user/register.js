import hyRequest from '@/service/request/index'
export const getRegister = (data) => {
  return hyRequest.post({
    url: "/api/v1/user/register",
    data
  })
}