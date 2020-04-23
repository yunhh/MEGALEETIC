
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

const burgerMenu_index = () => {
  const btn = document.querySelector('.toggle-btn_user_index');
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

const burgerMenu_show = () => {
  const btn = document.querySelector('.toggle-btn_user_show');
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

 export {burgerMenu_show}
 export {burgerMenu}
 export {burgerMenu_index}
