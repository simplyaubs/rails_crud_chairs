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

  def show
    @chair = Chair.find(params[:id])
  end

  def edit
    @chair = Chair.find(params[:id])
  end

  def update
    @chair = Chair.find(params[:id])
    @chair.update_attributes!(chair_params)

    redirect_to chairs_path(@chair)
  end

  private
  def chair_params
    params.require(:chair).permit(:size, :color)
  end
end