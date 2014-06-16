require 'data_mapper'

env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require 'link'

DataMapper.finalize

DataMapper.auto_upgrade!

set :views, Proc.new{File.join(root,'..','views')}

get '/' do
	@links = Link.all
	erb :index
end