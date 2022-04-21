require 'sinatra'
get '/sinatra' do
  "Hello World!"
end

get '/health' do
  "Healthy"
end
