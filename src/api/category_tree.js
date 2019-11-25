import request from '@/utils/request'

export function getCategoryTree(params) {
  return request({
    url: '/item/category/tree',
    method: 'get',
    params
  })
}
