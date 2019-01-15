Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'posts#index' , as: 'home'   #nazwa kontrolera/widoku
get 'about' => 'pages#about' , as: 'about'
get 'myrecipes' => 'pages#myrecipes' , as: 'myrecipes'

#root 'posts#index' , as: 'home'

resources :posts do
  resources :comments

end




end
