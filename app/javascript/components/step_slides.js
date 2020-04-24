function animateSlide() {

  // console.log(`The index of current slide is: ${this.currentSlide}`);
  // console.log('this',this);
  // console.log('current', this.currentSlide);
  const circle4 = document.getElementById('circle-4');
  const circles = document.getElementById('controls');
  const eyeBtn = document.querySelector('.button-eye-step');

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
   // console.log("appel")
  if (circle4.classList.contains("dot-active")){
    // console.log("active")
    circles.style.display = "none";
    eyeBtn.style.display = "none";
  } else {
    // console.log("not active")
    eyeBtn.style.display = "block";
  }
}


export {animateSlide}
