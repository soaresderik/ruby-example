require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.sqlite3')

class Mesa < ActiveRecord::Base
    self.table_name = 'mesas'
end
