require 'sinatra'

class App < Sinatra::Application

  PRODUCTS_ARRAY=[]

  get '/' do
    erb :index
  end

  get '/products/new' do
    erb :new_product
  end

  post '/products/new' do
    PRODUCTS_ARRAY << params[:new_product]
    redirect '/'
  end

end