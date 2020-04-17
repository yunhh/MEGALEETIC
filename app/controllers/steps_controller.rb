class StepsController < ApplicationController
  def show
    @step = Step.find(params[:id])
    @megalith = @step.megalith
    @descriptions = @megalith.descriptions
    @user_step = current_user.user_steps.find_by(step: @step)
    # @course = @step.course
    # @user_course = UserCourse.find_by(course: @course, user: current_user)
    # @user_step = UserStep.find_by(step: @step, user_course: @user_course)
  end
end
