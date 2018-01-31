Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   resources :corsairs
  root 'static_pages#home'

 


end
