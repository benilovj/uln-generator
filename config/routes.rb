Rails.application.routes.draw do
  post '/generate', to: 'ulns#generate'

  root to: 'ulns#new'
end
