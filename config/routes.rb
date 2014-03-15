Courses::Application.routes.draw do
	root to: 'courses#index'

	resources :courses
	resources :holes

end
