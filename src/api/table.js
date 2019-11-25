import request from '@/utils/request'

export function getList(params) {
  return request({
    url: '/item/brand/page',
    method: 'get',
    params
  })
}

export function deleteBrand(id) {
  return request({
    url: '/item/brand/bid/' + id,
    method: 'delete'
  })
}
