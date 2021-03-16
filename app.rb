require 'sinatra'

set :session_secret, 'Kevin McCloud'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret club'
end

get '/random-cat' do
	@name = ["Amigo", "Misty", "Almond"].sample
	erb(:index)
end

get '/named-cat' do
	p params
	@name = params[:name]
	erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
