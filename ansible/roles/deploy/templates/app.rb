require 'sinatra/base'

class App < ::Sinatra::Base
  get '/' do
    'Hello World from Sinatra'
  end
end
