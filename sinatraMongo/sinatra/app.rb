# myapp.rb
require 'sinatra'

require 'mongo'
# connecting to the database
client = Mongo::Connection.new('mongodb')
db     = client['example-db']
coll   = db['example-collection']

get '/' do
  cursor = coll.find(:lastname => 'Sled')	
  item = cursor.first
  "First Name :  #{item['firstname']}<br/>Last Name : #{item['lastname']}" 
end
