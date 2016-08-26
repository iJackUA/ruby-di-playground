require("#{File.dirname(__FILE__)}/database.rb")

class DatabaseSqlite < Database
  def connection
    'jdbc:sqlite://skynet:1234/humanoids'
  end
end
