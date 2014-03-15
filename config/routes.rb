Courses::Application.routes.draw do
	root to: 'courses#index'

	resources :courses do
		resources :holes
	end

end
