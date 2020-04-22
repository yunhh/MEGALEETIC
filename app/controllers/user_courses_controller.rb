class UserCoursesController < ApplicationController
  def index
    @user_courses = current_user.user_courses
    @courses_done = @user_courses.where(done: true)
    @courses_ongoing = @user_courses.where(done: false)
  end

  def show
    @user_course = current_user.user_courses.find(params[:id])

  end

  def create
    @user_courses = UserCourse.new()
    @user_courses.user = current_user
    @user_courses.course = @course
    @user_courses.done = false

    if @user_courses
end
