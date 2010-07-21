
set :views, File.dirname(__FILE__) + '/../views/home'
get '/' do
 erb :index
end 
get '/left.html' do
#  "Hello World"
   erb :left
end

