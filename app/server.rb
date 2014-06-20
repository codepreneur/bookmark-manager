require 'sinatra'
require 'data_mapper'
require 'sinatra/flash'
require 'sinatra/partial'
require 'rest_client'
require 'pry'


require_relative 'models/link'
require_relative 'models/tag'
require_relative 'models/user'
require_relative 'helpers/application'
require_relative 'helpers/email'
require_relative 'data_mapper_setup'

require_relative 'controllers/users'
require_relative 'controllers/tags'
require_relative 'controllers/sessions'
require_relative 'controllers/links'
require_relative 'controllers/application'


enable :sessions 

#set :views, Proc.new{File.join(root,'..','views')}
set :session_secret, 'super secret' 
#use Rack::Flash
set :partial_template_engine, :erb

use Rack::Static, :urls => ['/css', '/js', '/images'], :root => 'public'















