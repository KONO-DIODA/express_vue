import hyRequest from '@/service/request/index'

export const getCourseList = (data) => {
  return hyRequest.get({
    url: "/api/v1/course/find",
    params: data
  })
}