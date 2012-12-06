PhonicPanel::Application.routes.draw do
  resources :sound_clips


  resources :sound_boards


  match '/auth/:provider/callback', :to => 'sessions#create'

end
