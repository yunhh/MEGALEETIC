class CoursesController < ApplicationController
  def index
    @user_position = [47.598, -3.113]
    if params[:query].present?
      @user_search = Geocoder.search(params[:query]).first.coordinates

      @courses = Course.order(rating: :desc).near(params[:query], 30)

    else

      @user_search = @user_position
      @courses = Course.order(rating: :desc).near(@user_position, 30)



    end
    @markers = @courses.map do |course|
      icon = 'https://res.cloudinary.com/dc9pm7uj8/image/upload/v1587038185/menhirs_zuyjob.png'
      {
        lat: course.latitude,
        lng: course.longitude,
        image_url: helpers.asset_url(icon)
      }
    end

    @markers << {lat: @user_position.first, lng: @user_position.last, image_url: helpers.cl_image_path(current_user.photo.key, :transformation=>[
      {:width=>400, :height=>400, :radius=>"max", :crop=>"pad", :fetch_format=>:png},
      {:width=>200, :crop=>"scale"}
      ])}
    @markers << {lat: @user_search.first, lng: @user_search.last}

    @top_courses = Course.all.order(rating: :desc)

  end

  def show

    @course = Course.find(params[:id])
    @steps = @course.steps.order(position: :asc)
    @megaliths = Megalith.geocoded

    @markers = @megaliths.map do |megalith|
      if megalith.category == "Menhir"
      icon = 'https://res.cloudinary.com/dc9pm7uj8/image/upload/v1587038185/menhirs_zuyjob.png'
      elsif megalith.category == "Cairn"
        icon = 'https://res.cloudinary.com/dc9pm7uj8/image/upload/v1587038186/cairn_zngsdy.png'
      elsif megalith.category == "Dolmen"
        icon = 'https://res.cloudinary.com/dc9pm7uj8/image/upload/v1587038186/dolmen_pklsdz.png'
      elsif megalith.category == "Tumulus"
        icon = 'https://res.cloudinary.com/dc9pm7uj8/image/upload/v1587038186/cairn_zngsdy.png'
      elsif megalith.category == "Alignement Menhir"
        icon = 'https://res.cloudinary.com/dc9pm7uj8/image/upload/v1587038186/alignement_fe1kme.png'
      else
        icon = 'https://res.cloudinary.com/dc9pm7uj8/image/upload/v1587038186/alignement_fe1kme.png'
      end
      {
        lat: megalith.latitude,
        lng: megalith.longitude,
        image_url: helpers.asset_url(icon)
      }
    end

    unless @user_course = UserCourse.find_by(user: current_user, course: @course)
      @user_course = UserCourse.create(user: current_user, course: @course, done: false)
      @course.steps.each do |step|
        @user_course.user_steps.create(step: step, done: false)
      end
    end


  end


end


