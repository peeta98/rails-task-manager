Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#index' # Read all the tasks
  get 'tasks/new', to: 'tasks#new' # The `new` route needs to be placed before the `show` route
  post 'tasks', to: 'tasks#create' # Creates the new task and displays it on the main page
  get 'tasks/:id', to: 'tasks#show', as: :task  # Read individual task details
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
end
