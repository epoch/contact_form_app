ContactFormApp::Application.routes.draw do

  resources :enquiries 
  root :to => 'enquiries#index'

end
