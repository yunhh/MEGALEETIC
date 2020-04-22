// function quizExplanations() {


  // console.log(coucou);
// btn.onclick = function (){
//   nav.classList.toggle('nav_open');
// }
const quizExplanations = () => {
  const btn = document.getElementById('toggle-answer');
  const explain = document.getElementById('explanations');
  const sbmt = document.getElementById('submit-quiz');
  const rightAnswerField = document.querySelector('.right-answer');
  const radioButtons = document.querySelectorAll('.radio_buttons')

  if (btn){
    btn.addEventListener('click', (event) => {
      event.preventDefault();
      explain.style.display = "block";
      btn.style.display = "none";

      sbmt.classList.remove("hidden");

      const rightAnswer = rightAnswerField.dataset.answer;

      let userAnswer = "";
      radioButtons.forEach((button) => {
        if (button.checked){
          userAnswer = button.value;
        };
      });

      if (rightAnswer === userAnswer){
        rightAnswerField.insertAdjacentHTML("beforeend", "Félicitations c'est la bonne réponse !");
      } else {
        rightAnswerField.insertAdjacentHTML("beforeend", `Hélas la bonne réponse était ${rightAnswer}...`);
      }


    });
  }

}



export {quizExplanations}
