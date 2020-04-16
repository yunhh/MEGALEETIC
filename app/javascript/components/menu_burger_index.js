
const burgerMenu = () => {
  const btn = document.querySelector('.toggle-btn');
  const nav = document.querySelector('.my-nav');
  // btn.onclick = function (){
  //   nav.classList.toggle('nav_open');
  // }
  if (btn){
    btn.addEventListener('click', event => {

      nav.classList.toggle('open');
    });
  }
}

 export {burgerMenu}
