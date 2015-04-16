Rails.application.routes.draw do
  devise_for :users
#excess generated for advertisements after advertisements_controller.rb is populated:
#  get 'advertisements/index',  get 'advertisements/show',  get 'advertisements/new', get 'advertisements/edit'
  resources :advertisements

  resources :questions

  resources :posts

  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'

end
