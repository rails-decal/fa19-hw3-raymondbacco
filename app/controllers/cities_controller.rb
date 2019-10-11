class CitiesController < ApplicationController
  def index
    @cities = City.all
  end
  def show
   @city = City.find(params[:id])
  end
  def new
    @city = City.new
  end

  def create
   puts "here3"
   @city = City.create city_params
   redirect_to city_path(@city)
  end

  def edit
    @city = City.find(params[:id])
  end
  def update
    @city = City.find(params[:id])
    @city.update city_params
    redirect_to city_path(@city)
  end
  def destroy
    City.find(params[:id]).destroy
    redirect_to root_path
  end
  private
    def city_params
      params.require(:city).permit(:name, :population, :landmark)
    end
end
