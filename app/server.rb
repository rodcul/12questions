require 'sinatra'
require 'data_mapper'
require 'rack-flash'

require_relative '../config/database'
require_relative 'models/user'

use Rack::Flash, :accessorize => [:notice, :error]
use Rack::MethodOverride


enable :sessions
set :session_secret, 'f8287b802ffbd7dc8b706915182e3a46334e9529ca51cabcc52dd4713385a89c'
set :protection, :except => :path_traversal
set :protect_from_csrf, true

get '/' do
  erb :index
end


