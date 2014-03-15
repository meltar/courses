Courses::Application.routes.draw do
  get "holes/index"
  get "holes/show"
  get "holes/edit"
  get "holes/update"
  get "holes/new"
  get "holes/create"
  get "holes/delete"
	root to: 'courses#index'

	resources :courses

end
