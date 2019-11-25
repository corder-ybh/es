<template>
  <div class="app-container">
    <el-table
      v-loading="listLoading"
      :data="paginate.items"
      element-loading-text="Loading"
      border
      fit
      highlight-current-row
    >
      <el-table-column align="center" label="ID" prop="id" width="95">
      </el-table-column>
      <el-table-column align="center"  label="名称" prop="name">
      </el-table-column>
      <el-table-column label="LOGO" width="170" align="center">
        <template slot-scope="scope">
          <img v-if="scope.row.image" :src="scope.row.image" width="130" height="40">
        </template>
      </el-table-column>
      <el-table-column label="首字母" width="110" prop="letter" align="center">
      </el-table-column>
      <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button plain type="primary" icon="el-icon-edit"></el-button>
          <el-button plain type="warning" icon="el-icon-delete" @click="deleteBrand(scope.row.id)"></el-button>
        </template>
      </el-table-column>
    </el-table>
    <div class="pagination">
      <el-pagination
        background
        layout="total, prev, pager, next"
        :total="paginate.total"
        :page-size="paginate.perPage"
        :current-page="paginate.currentPage"
        @current-change="pageChange">
      </el-pagination>
    </div>
  </div>
</template>

<style>
  .pagination{
    display: flex;
    display: -webkit-flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
  }
</style>
<script>
import { getList, deleteBrand } from '@/api/table'

export default {
  filters: {
    statusFilter(status) {
      const statusMap = {
        published: 'success',
        draft: 'gray',
        deleted: 'danger'
      }
      return statusMap[status]
    }
  },
  data() {
    return {
      listLoading: true,
      paginate: []
    }
  },
  created() {
    this.fetchData()
  },
  methods: {
    deleteBrand(id) {
      deleteBrand(id).then(response => {
        console.log(response)
      })
    },
    pageChange(page) {
      const params = { page: page }
      getList(params).then(response => {
        console.log(response)
        this.listLoading = false
        this.paginate = response
      })
    },
    fetchData() {
      this.listLoading = true
      getList().then(response => {
        console.log(response)
        this.listLoading = false
        this.paginate = response
      })
    }
  }
}
</script>
