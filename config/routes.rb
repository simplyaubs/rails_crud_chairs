Rails.application.routes.draw do

  root 'welcome#index'

  resources :chairs
end
