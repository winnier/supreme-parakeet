Rails.application.routes.draw do

  # Vendors
  get '/vendors', to: 'vendors#index'
  get '/vendors/:id', to: 'vendors#show'

  # Sweets
  get '/sweets', to: 'sweets#index'
  get '/sweets/:id', to: 'sweets#show'
  
  # VendorSweets
  post '/vendor_sweets', to: 'vendor_sweets#create'
  delete '/vendor_sweets/:id', to: 'vendor_sweets#destroy'
end
