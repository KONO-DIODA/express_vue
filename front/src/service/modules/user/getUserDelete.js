import hyRequest from '@/service/request/index'

export const getUserDelete = (data) => {
  return hyRequest.get({
    url: "/api/v1/user/delete",
    params: data
  })
}