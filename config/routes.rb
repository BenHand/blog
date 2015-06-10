Rails.application.routes.draw do

  resources :blog_post
  get '/about', to: 'welcome#about'
  root to: 'welcome#index'

end
