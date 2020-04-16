class StepsController < ApplicationController
  def show
    @step = Step.find(params[:id])
    @megalith = @step.megalith
    @descriptions = @megalith.descriptions
  end
end
