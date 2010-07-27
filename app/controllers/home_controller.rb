
set :views, File.dirname(__FILE__) + '/../views/home'

use Rack::Auth::Basic do |username, password|
  username == 'admin' && password == 'secret'
end


get '/' do
  erb :index
end

get '/left' do  
  @smoke = SmokeDates.retrieve.collect{|d| Date.parse(d)}.sort.reverse
  @load = LoadDates.retrieve.collect{|d| Date.parse(d)}.sort.reverse
  erb :left
end

