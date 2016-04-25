Rails.application.routes.draw do
  get '/vendors' => 'vendors#index'
  get '/vendors/new' => 'vendors#new'
  post 'vendors' => 'vendors#create'
  get 'vendors/:id' => 'vendors#show' ,as: :vendor
  get 'vendors/:id/edit' => 'vendors#edit', as: :edit_vendor
  patch 'vendors/:id' => 'vendors#update'
  delete 'vendors/:id' => 'vendors#destroy' ,as: :delete_vendor

end
