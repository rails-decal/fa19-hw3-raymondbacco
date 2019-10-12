class CitiesController < ApplicationController
  def index
    @cities = City.all
  end
  def show
  end
  def new
  end
  def create
   @city = params[:city]
   @population =params[:population]
   @landmark = params[:landmark]
   city = City.new(
                    name: @city,
                    population: @population,
                    landmark: @landmark
                )
   city.save
   redirect_to '/cities/index'	
  end
  def edit
  end
  def updateForm
  end
  def update

   @city = params[:city].to_sym
   @population =params[:population]
   @landmark = params[:landmark]
   $cities[@city].population = @population
   $cities[@city].landmark = @landmark
   redirect_to '/cities/index'
  end
  def destroy
    City.find(params[:id]).destroy
    redirect_to root_path
  end
end
