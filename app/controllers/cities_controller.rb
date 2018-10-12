#RESOURCE: https://learn.co/lessons/rails-edit-update-action-readme
class CitiesController < ApplicationController #everything in CitiesController goes through ApplicationController
#Controller handles user requests
#and asks model to get information that will be displayed to the user

#This is run before the view.html.erb files
  def view
   #@city = WeatherService.get(params[:name])
  end

  def new #displays form to let you create a new city #cities/new

  end

  def create #(POST) takes the information the user has submitted and creates a city by giving it a hash
    @City = City.new({
      :name => params[:name],
      :landmark => params[:landmark],
      :population => params[:population]})

      @City.save
      render 'view'
  end

  def update

  end

  def postupdate
    #Query database for City record that matches the :name passed to the route and store query in an instance variable
    @City = City.all[params[:name].to_sym]
    #@City = City.all[param[:name].to_sym]
    if not @City.nil?
      @City.postupdate(params)
    #Redirect the user to the veiw page so they can see the update
      @City.save
    #end

    else
        puts 'The city you are trying to update does not exist.'
    end

    render 'cities/view'

  end


end


# <!-- <%@City = City.all%> -->
# <!-- How to use attr_accessor to give parameters
#
# <% City.all.each do |key, value| %>
# <% @c = c %>
# <% if not c.nil? %>
#   <h1> <%= '#{key}: #{value}'  %></h1>
#   <p>
#     Temperature: <%= c.weather[:temperature] %>  Kelvin <br>
#     Description: <%= c.weather[:description] %> <br>
#     Population: <%= c.population %> <br>
#     Landmark: <%= c.landmark %> <br>
#   </p>
#   <% end %>
#   <% end %>
# -->

# <!-- The view file is what the user sees, "a puppet reading what the controller gives it"  !-->
#
# <!--
# <% if not @city.nil? %>
#    <h1><%= @city[:name] %></h1>
# <%end%>
# -->
#
# <!-- <% City.all %>-->
