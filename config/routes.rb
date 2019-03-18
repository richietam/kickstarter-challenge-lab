Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #index
  get '/projects', to: 'projects#index', as: 'projects'

  #show

  #new

  get '/projects/new', to: 'projects#new', as: 'new_project'

  #create
  post '/projects', to: 'projects#create'


  get '/projects/:id', to: 'projects#show', as: 'project'

  #edit

  get '/projects/:id/edit', to: 'projects#edit', as: 'edit_project'

  #update

  patch 'projects/:id', to: 'projects#update'

  #delete

  # delete 'projects/:id', to: 'projects#delete'
  resources :projects, only: [:destroy]

end
