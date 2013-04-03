require 'sinatra'

require_relative 'movies'

get '/' do
  # Just have a nice welcome page
end

post '/film' do
  # Search for a Movie
  # HINT - what is in params ?
  Movie.get_film_info(name)

  # Display the movie in the page
end