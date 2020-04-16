class CoursesController < ApplicationController
  def index

    @courses = Course.all
    # @courses = Course.geocoded

   #   @markers = @courses.map do |course|

   #    {
   #      lat: course.latitude,
   #      # lat: 47.5977,
   #      lng: course.longitude
   #      # lng: -3.0634
   #    }
   # end


  end

  def show



    @course = Course.find(params[:id])
    @steps = Step.all

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
end
