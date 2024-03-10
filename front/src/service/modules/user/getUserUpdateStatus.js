import hyRequest from '@/service/request/index'

export const getUserUpdateStatus = (data) => {
  return hyRequest.get({
    url: "/api/v1/user/update/status",
    params: data,
  }) 
}