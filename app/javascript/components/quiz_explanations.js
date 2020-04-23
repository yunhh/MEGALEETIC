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
  const radioButtons = document.querySelectorAll('.js-quiz-answer-radio');
  const radioWrappers = document.querySelectorAll('.js-quiz-answer-wrapper');

  // const selectAnswer = document.querySelectorAll(".answer")
  // console.log(selectAnswer);

  if (btn) {
    radioButtons.forEach(btn => btn.checked = false);

    radioWrappers.forEach(wrapper => {
      wrapper.addEventListener('click', (event) => {
        radioWrappers.forEach(wrapper => wrapper.classList.remove('selected'));
        radioButtons.forEach(btn => btn.checked = false);

        wrapper.classList.add('selected');

        const answerRadio   = wrapper.querySelector('input.js-quiz-answer-radio');
        answerRadio.checked = true;
      });
    });

    btn.addEventListener('click', (event) => {
      event.preventDefault();
      explain.style.display = "block";
      btn.style.display = "none";

      sbmt.classList.remove("hidden");

      const rightAnswer = rightAnswerField.dataset.answer;
      // console.log(rightAnswer);

      let userAnswer = "";
      radioButtons.forEach((button) => {
        if (button.checked){
          userAnswer = button.value;
        };
      });

      if (rightAnswer === userAnswer){
        rightAnswerField.insertAdjacentHTML("beforeend", "Félicitations c'est la bonne réponse !");
      } else {
        rightAnswerField.insertAdjacentHTML("beforeend", `Hélas, la bonne réponse était : ${rightAnswer}...`);
      }






    });
  }

}



export {quizExplanations}
