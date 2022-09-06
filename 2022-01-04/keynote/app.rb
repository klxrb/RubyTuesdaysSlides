require 'sinatra'

set :static, true
set :public_folder, __dir__ + 'public'

get '/' do
  erb :index
end
