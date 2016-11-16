require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get "/" do
  erb :home
end
get "/movies" do
  movie_name = params["movie_name"]
  url = "http://www.omdbapi.com/?t=#{movie_name}"
  @movie = HTTParty.get url
  erb :movies
end

get "/search" do
   erb :search
end

# get "/auto/:color" do
#    @color = params[:color]
#    erb :car_color#"dynamic contact to be loaded
# end
#
# response = HTTParty.get "http://www.omdbapi.com/?t=Satantango"
#
# get "/users" do
#   @first = "Larry"
#   @second = "Barry"
#   @third = "Garry"
#   erb :users_index
# end
#
# get "/users/:username" do
#   @name = params[:username]
#   erb :users_show
# end
#
# get "/results" do
#   @first_num = params[:first_num].to_f
#   @second_num = params[:second_num].to_f
#   erb :results
# end
