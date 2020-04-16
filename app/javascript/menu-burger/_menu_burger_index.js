const btn = document.querySelector('.toogle-btn');
const nav = document.querySelector('.menu_nav');
alert('test');

// btn.onclick = function (){
//   nav.classList.toggle('nav_open');
// }

btn.addEventListener('click', event => {
  nav.classList.toggle('nav_open');
});
