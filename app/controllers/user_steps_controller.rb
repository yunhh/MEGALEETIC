class UserStepsController < ApplicationController

  def update
    @user_step = UserStep.find(params[:id])
    if @user_step.update(user_step_params)
      redirect_to course_path(@user_step.step.course)
      flash[:notice] = "Votre étape a bien été validé"
    else
      render 'steps/show'
    end
  end

  def mark_as_done
    @user_step = UserStep.find(params[:id])
    @user_step.done = true
    @user_step.save

    last_user_step = @user_step.user_course.user_steps.order(:position).last
    if @user_step == last_user_step
      @user_step.user_course.update(done: true)
    end
    # if user_step.step.course.done == false
    #   user_step.step.course.done == true
    # else
    redirect_to course_path(@user_step.step.course)
  end

  private

  def user_step_params
    params.require(:user_step).permit(:quiz_answer)
  end

end
