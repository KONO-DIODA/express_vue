import hyRequest from '@/service/request/index'

export const getCourseChange = (data) => {
  return hyRequest.get({
    url: "/api/v1/course/update",
    params: data
  })
}