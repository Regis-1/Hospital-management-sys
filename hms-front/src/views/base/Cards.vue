<template>
  <CRow>
    <!-- <CCol :xs="12">
      <DocsCallout name="Card" href="components/card" />
    </CCol> -->
    <CCol :xs="12">
      <CCard class="mb-4">
        <CCardHeader>
          <strong>Schedule</strong> <small>Week Date</small>
        </CCardHeader>
        <CCardBody>
          <p class="text-medium-emphasis small">
            Short description of given week and some information
          </p>
          <CCard class="text-center" style="width: 18rem">
            <CCardBody>
              <CCardTitle>Appointment 1</CCardTitle>
              <CCardText>Patient 1</CCardText>
              <CButton href="#">Go somewhere</CButton>
            </CCardBody>
          </CCard>
          <CCard class="text-center" style="width: 18rem">
            <CCardBody>
              <CCardTitle>Appointment 2</CCardTitle>
              <CCardText>Patient 2</CCardText>
              <CButton href="#">Go somewhere</CButton>
            </CCardBody>
          </CCard>
          <CCard class="text-center" style="width: 18rem">
            <CCardBody>
              <CCardTitle>Appointment 3</CCardTitle>
              <CCardText>Patient 3</CCardText>
              <CButton href="#">Go somewhere</CButton>
            </CCardBody>
          </CCard>
        </CCardBody>
      </CCard>
    </CCol>
  </CRow>
</template>

<script>
import VueImg from '@/assets/images/vue.jpg'
export default {
  name: 'Cards',
  setup() {
    return {
      VueImg,
    }
  },
}
</script>
