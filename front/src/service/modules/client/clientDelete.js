import hyRequest from '@/service/request/index'

export const getClientDelete = (data) => {
  return hyRequest.get({
    url: "/api/v1/client/delete",
    params: data
  })
}