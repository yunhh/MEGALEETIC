// function quizExplanations() {


  // console.log(coucou);
// btn.onclick = function (){
//   nav.classList.toggle('nav_open');
// }
const quizExplanations = () => {
  const btn = document.getElementById('toggle-answer');
  const explain = document.getElementById('explanations');
  const sbmt = document.getElementById('submit-quiz');
  if (btn){
    btn.addEventListener('click', () => {

      explain.style.display = "block";
      btn.style.display = "none";
      sbmt.classList.remove = "hidden";
    });
  }
}



export {quizExplanations}
