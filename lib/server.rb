require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_test') #connects to the specified database
DataMapper.finalize #verifies that your code is kosher
DataMapper.auto_upgrade! #misleading name!...but it updates the database with any changes made.
