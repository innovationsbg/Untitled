Rails.application.routes.draw do
  get 'posts' => 'posts#index'

  get 'posts/new'

  post 'posts/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
