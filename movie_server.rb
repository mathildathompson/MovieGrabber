require 'sinatra'
require 'pry'
require 'rack-flash'

enable :sessions
use Rack::Flash

require_relative 'movies'

before '/' do
	unless params[:password] == "coolbananas"
	flash[:notice] = "Sorry the password is wrong, follow the IMDB twitter account if you are interested in joining"
    redirect '/login'
    end
   end

 get '/login' do
 	erb :login
 end

 post '/login' do
 	erb :index
 end

get '/' do
	"welcome"

	erb :index
end



post '/film' do
	
#   # Search for a Movie
#   # HINT - what is in params ?
 movie = Movie.get_film_info(params[:title])
 #takes the movie name out of the submit form

 erb :film , :locals => { :film => movie}
 
 



#   # Display the movie in the page
end