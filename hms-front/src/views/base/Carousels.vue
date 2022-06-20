<template>
  <CRow>
    <!-- <CCol :xs="12">
      <DocsCallout name="Carousel" href="components/carousel.html" />
    </CCol> -->
    <CCol :xs="12">
      <CCard class="mb-4">
        <CCardHeader>
          <strong>Card</strong> <small>Kitchen sink</small>
        </CCardHeader>
        <CCardBody>
          <p class="text-medium-emphasis small">
            Combine and match many content types to build the card you need, or
            throw everything in there. Shown below are image styles, blocks,
            text styles, and a list group—all wrapped in a fixed-width card.
          </p>
          <CCard style="width: 18rem">
            <CCardImage orientation="top" :src="VueImg" />
            <CCardBody>
              <CCardTitle>Card title</CCardTitle>
              <CCardText>
                Some quick example text to build on the card title and make up
                the bulk of the card&#39;s content.
              </CCardText>
            </CCardBody>
            <CListGroup flush>
              <CListGroupItem>Cras justo odio</CListGroupItem>
              <CListGroupItem>Dapibus ac facilisis in</CListGroupItem>
              <CListGroupItem>Vestibulum at eros</CListGroupItem>
            </CListGroup>
            <CCardBody>
              <CCardLink href="#">Card link</CCardLink>
              <CCardLink href="#">Another link</CCardLink>
            </CCardBody>
          </CCard>
        </CCardBody>
      </CCard>
    </CCol>
  </CRow>
</template>

<script>
import AngularImg from '@/assets/images/angular.jpg'
import ReactImg from '@/assets/images/react.jpg'
import VueImg from '@/assets/images/vue.jpg'
export default {
  name: 'Carousels',
  setup() {
    return {
      AngularImg,
      ReactImg,
      VueImg,
    }
  },
}
</script>
