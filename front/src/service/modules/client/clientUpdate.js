import hyRequest from '@/service/request/index'

export const getClientUpdate = (data) => {
  return hyRequest.get({
    url: "/api/v1/client/update",
    params: data
  })
}