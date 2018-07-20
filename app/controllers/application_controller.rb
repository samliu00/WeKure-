require 'bundler'
Bundler.require

require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :index
  end

  get '/quiz' do
    erb :content
  end
  
  get '/about' do
    erb :about
  end 
  
  get '/scoliosis' do
    erb :scoliosis
  end
  
  get '/diabetes' do
    erb :diabetes
  end
  
  post '/results' do
    @answer = params[:bloodsugar].to_i
    erb :results
  end
end
