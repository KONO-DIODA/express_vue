import hyRequest from '@/service/request/index'

export const getCourseDelete = (data) => {
  return hyRequest.get({
    url: "/api/v1/course/delete",
    params: data
  })
}
