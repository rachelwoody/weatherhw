require_relative "../services/weather_service"

class MainController < ApplicationController

  def index

    @name = params[:name]
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    
    city = City.new(
      name: params[:city],
      temperature: @w[:temperature],
      description: @w[:description]
    )
    city.save

  end

end
