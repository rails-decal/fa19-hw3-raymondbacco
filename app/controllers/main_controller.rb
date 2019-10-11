require_relative '../services/weather_service'

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    if not params[:city].nil?
      @w = WeatherService.get(params[:city])
      @city_name = @w[:city]
      @d = @w[:description]
      @k = @w[:temperature] #Kelvin
      @c = @w[:temperature]-273.15 # Celsius
      @f = (((@w[:temperature]-273.15)*(9/5))+32) #Fahrenheit
    end

    if not params[:name].nil?
        @name = params[:name].capitalize
    end

    if not params[:city].nil?
      city = City.new(
        name:@city_name,
        temperature:@f,
        description:@d
      )
      city.save
    end
  end

end
