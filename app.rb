require 'sinatra/base'

class Chitter < Sinatra::Base

  get '/' do
    'Welcome To Chitter'
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :'peeps/index'
  end

  run! if app_file == $0
end
