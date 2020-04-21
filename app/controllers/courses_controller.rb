class CoursesController < ApplicationController
  def index

    if params[:query].present?
      @courses = Course.near(params[:query], 10)
    else
      @user_position = [47.598, -3.113]
      @courses = Course.near(@user_position, 10)
    end
    # @courses = Course.all
    # @courses = Course.geocoded

    @markers = @courses.map do |course|

      icon = 'https://res.cloudinary.com/dc9pm7uj8/image/upload/v1587038185/menhirs_zuyjob.png'

      {
        lat: course.latitude,
        lng: course.longitude,
        image_url: helpers.asset_url(icon)
      }
    end

    @top_courses = Course.all

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

  end

  def blank_stars
    5 - rating.to_i
  end
end
