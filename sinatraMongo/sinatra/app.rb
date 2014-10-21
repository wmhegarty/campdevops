# myapp.rb
require 'sinatra'

require 'mongo'
# connecting to the database
client = Mongo::Connection.new('mongodb')
db     = client['example-db']
coll   = db['example-collection']

get '/' do
  cursor = coll.find(:foo => 'bar')	
  " foo :  #{cursor.first}" 
end

get '/test' do
  'Test the World!'
end