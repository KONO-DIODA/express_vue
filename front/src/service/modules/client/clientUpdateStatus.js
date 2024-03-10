import hyRequest from '@/service/request/index'

export const getClientUpdateStatus = (data) => {
  return hyRequest.get({
    url: "/api/v1/client/update/status",
    params: data
  })
}