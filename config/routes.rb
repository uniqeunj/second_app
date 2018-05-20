Rails.application.routes.draw do
# create
 get '/notes/new' => 'notes#new'
 post '/notes' => 'notes#create'
# Read
 get '/notes' => 'notes#index'
 get '/notes/:id' => 'notes#show'
# update
 get '/notes/:id/edit' => 'notes#edit'
 patch '/notes/:id' => 'notes#update'
# destroy
 delete '/notes/:id' => 'notes#destroy'
end
