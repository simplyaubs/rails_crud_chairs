class ChairsController < ApplicationController

  def index
    @chair = Chair.new
    @chairs = Chair.all
  end

  def create
    @chair = Chair.new(chair_params)
    if @chair.save
      redirect_to chairs_path
    else
      render :index
    end
  end

  private
  def chair_params
    params.require(:chair).permit(:size, :color)
  end
end