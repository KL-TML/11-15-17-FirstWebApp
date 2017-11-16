require 'sinatra'

get '/home' do
  erb :index# instructions for what to do when user visits '/home' will go here
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = [ 'git', 'HTML', 'CSS', 'Ruby']
  @interest = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about_info
end

get '/favourites' do
  @fav_links = ['imdb.com', 'espn.com', 'whales.com', 'bitmaker.com']
  erb :fav_links_to
end

# get '/' do
#   redirect to('/home')
# end

get '/gallery' do
  redirect to('/portfolio')
end
