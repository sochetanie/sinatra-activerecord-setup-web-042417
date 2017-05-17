ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

	configure :development do
	  set :database, 'sqlite3:db/database.db'
	  # 'set :database, 'sqlite3:db/dogs.db' if file call dogs.dd or any other db file name we use
	end

require './app'