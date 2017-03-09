require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize #verifies that your code is kosher
DataMapper.auto_upgrade! #misleading name!...updates the database with any changes you've made.
