const swiper = new Swiper(".swiper-slider", {
  // Optional parameters
  centeredSlides: true,
  slidesPerView: 1,
  grabCursor: true,
  freeMode: false,
  effect: 'slide',
  loop: true,
  mousewheel: false,
  keyboard: {
    enabled: true
  },

  // If we need navigation
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev"
  },

  // Responsive breakpoints
  breakpoints: {
    640: {
      slidesPerView: 1.5,
      spaceBetween: -30
    },
    1024: {
      slidesPerView: 1.5,
      spaceBetween: -30
    }
  }
});