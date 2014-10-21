# myapp.rb
require 'sinatra'

get '/' do
   puts	"called"
  'Hello world!'
end

get '/test' do
   puts	"called"
  'Test the World!'
end