Rails.application.routes.draw do
  root "main#index" #just to original
  get 'cities/index'
  get 'cities/view'
  get 'cities/new'
  #get 'cities/update', to: 'cities#update'
  post 'cities/create'
  # post 'cities/update', to: 'cities#view'

  get 'cities/update'
  post 'cities/postupdate'

end

  #get 'cities/:name/createupdate', to: 'cities#createupdate' #, as: :update_city
  #patch 'createupdate/:name', to: 'cities#update'

  #posts = cities, :id = name, edit = update, update = createupdate

  #GET requests represent retrieving from server
  #POST requests represent sending info to website to create or update information
