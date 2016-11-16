require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get "/" do
  erb :home
end

get "/search" do
   erb :search
end

get "/movies" do
  movie_name = params["movie_name"]
  url = "http://www.omdbapi.com/?t=#{movie_name}"
  @movie = HTTParty.get url
  erb :movies
end

