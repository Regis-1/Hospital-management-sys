<template>
  <CRow>
    <!-- <CCol :xs="12">
      <DocsCallout name="Card" href="components/card" />
    </CCol> -->
    <CCol :xs="12">
<CCarousel controls indicators transition="crossfade">
  <CCarouselItem>
    <img class="d-block w-100" src="/images/vue.jpg" alt="slide 1"/>
  </CCarouselItem>
  <CCarouselItem>
    <img class="d-block w-100" src="/images/react.jpg" alt="slide 2"/>
  </CCarouselItem>
  <CCarouselItem>
    <img class="d-block w-100" src="/images/angular.jpg" alt="slide 3"/>
  </CCarouselItem>
</CCarousel>
    </CCol>
  </CRow>
</template>

<script>
import VueImg from '@/assets/images/vue.jpg'
export default {
  name: 'News',
  setup() {
    return {
      VueImg,
    }
  },
}
</script>
