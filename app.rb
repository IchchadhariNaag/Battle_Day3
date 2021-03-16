require 'sinatra'

set :session_secret, 'Kevin McCloud'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret club'
end

get '/cat' do
	erb(:index)
end
