require 'sinatra'
require 'pry'
require 'bcrypt'

enable :sessions

# database
require './db/db'

#models
require './models/music'
require './models/user'

# controllers
require './controllers/music_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'

#helpers
require './helpers/sessions_helper'

get '/' do 
    redirect '/music'
end






