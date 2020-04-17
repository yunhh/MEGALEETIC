class UserStepsController < ApplicationController

  def update
    @user_step = UserStep.find(params[:id])
    if @user_step.update(user_step_params)
      redirect_to course_path(@user_step.step.course)
      flash[:notice] = "Merci d'avoir répondu"
    else
      render 'steps/show'
    end
  end

  private

  def user_step_params
    params.require(:user_step).permit(:quiz_answer)
  end

end
