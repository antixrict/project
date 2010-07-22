set :views, File.dirname(__FILE__) + '/../views/home'

get '/' do
  erb :index
end

get '/left' do  
  @smoke = SmokeDates.retrieve.collect{|d| Date.parse(d)}.sort.reverse
  erb :left
end

