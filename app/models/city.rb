#Model talks to database, stores and validates data, performs logic

class City
	attr_accessor :name, :landmark, :population, :weather
  $cities = {} #adding global ($) array called cities
	@cities = []

	def initialize(city_params)
		@name = city_params[:name]
		@landmark = city_params[:landmark]
		@population = city_params[:population]
		@weather = WeatherService.get(@name)
	end

  def save
    $cities[@name.to_sym] = self #self is some object stored in memory
  end

	def update

	end

  def postupdate(update_params)

		@landmark = update_params[:landmark]
		@population = update_params[:population]
    #Your code here, for Task 4
		#Use update_params (a hash) to update the model
  end

	def self.all
		#@cities = $cities.values #lets update work, but view fails
	  $cities  #--> lets view work, but update fails

	end

end
