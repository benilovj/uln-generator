class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  http_basic_authenticate_with name: "das", password: ENV['PASSWORD'] || 'secret'
end
