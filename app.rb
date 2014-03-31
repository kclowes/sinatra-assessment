require 'sinatra'

class App < Sinatra::Application

  get '/' do
    erb :index
  end

  get '/products/new' do
    erb :new_product
  end

end