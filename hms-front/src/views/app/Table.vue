<template>
  <CRow>
    <CCol :xs="12">
      <CCard class="mb-4">
        <CCardHeader>
          <strong>List of Users</strong>
        </CCardHeader>
        <CCardBody>
          <CTable striped>
            <CTableHead>
              <CTableRow>
                <CTableHeaderCell scope="col">#</CTableHeaderCell>
                <CTableHeaderCell scope="col">Email</CTableHeaderCell>
                <CTableHeaderCell scope="col">actions</CTableHeaderCell>
              </CTableRow>
            </CTableHead>
            <CTableBody>
              <CTableRow v-for="user in users" v-bind:key="user">
                <CTableHeaderCell scope="row">{{ user.id }}</CTableHeaderCell>
                <CTableDataCell>{{ user.email }}</CTableDataCell>
                <CTableDataCell>
                  <a href="#">delete</a>
                </CTableDataCell>
              </CTableRow>
            </CTableBody>
          </CTable>
          <p class="text-medium-emphasis small">
            These classes can also be added to table variants:
          </p>
        </CCardBody>
      </CCard>
    </CCol>
  </CRow>
</template>

<script>
export default {
  name: 'Table',
  data() {
    return {
      users: null,
      // users: [
      //   { id: '1', email: 'luis@mail.com' },
      //   { id: '2', email: 'jacek@mail.com' },
      // ],
    }
  },
  mounted() {
    this.axios
      .get('http://localhost:6868/user')
      .then((response) => (this.users = response.data))
  },
}
</script>
