function animateSlide() {

  // console.log(`The index of current slide is: ${this.currentSlide}`);
//   console.log(this);
  let el = this.currentSlide;
  let lastEl = el === 0 ? 5 : el - 1;

  let dots = document.querySelectorAll('.circle');
  [...dots].forEach((dot) => {
    dot.classList.remove("dot-active");
  });

  let activeDot = document.getElementById(`circle-${el}`);
  activeDot.classList.add("dot-active");

  // let previousSlide = document.getElementById(`slide-${lastEl}`);
  // previousSlide.firstElementChild.classList.remove("animation-content");
  // console.log(previousSlide);

  let activeSlide = document.getElementById(`slide-${el+1}`);
  activeSlide.firstElementChild.classList.add("animation-content");
  console.log(activeSlide);

}


export {animateSlide}
