function animateSlide() {

  // console.log(`The index of current slide is: ${this.currentSlide}`);
  if (!this) return
  // console.log('this',this);
  // console.log('current', this.currentSlide);
  let el = this.currentSlide;
  let lastEl = el === 0 ? 3 : el - 1;
  // console.log('last', lastEl);
  let dots = document.querySelectorAll('.circle');
  [...dots].forEach((dot) => {
    dot.classList.remove("dot-active");
  });

  let activeDot = document.getElementById(`circle-${el}`);
  activeDot.classList.add("dot-active");

  let previousSlide = document.querySelector(`#slide-${lastEl+1} .content`);
  previousSlide.classList.remove("animation-content");
  // console.log(previousSlide);

  let activeSlide = document.querySelector(`#slide-${el+1} .content`);
  if (activeSlide) {
    activeSlide.classList.add("animation-content");
  }
  // console.log(activeSlide);

}


export {animateSlide}
