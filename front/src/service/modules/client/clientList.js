import hyRequest from '@/service/request/index'

export const getClientList = (data) => {
  return hyRequest.get({
    url: "/api/v1/client/list",
    params: data
  })
}