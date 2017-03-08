require 'data_mapper'
require 'dm-postgres-adapter'


class Link #a table in the database
  include DataMapper::Resource

  property :id, Serial #a column in the table/database
  property :title, String
  property :url, String

end
