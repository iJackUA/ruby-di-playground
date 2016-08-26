require("#{File.dirname(__FILE__)}/user_repo.rb")
require("#{File.dirname(__FILE__)}/log_elastic.rb")
require("#{File.dirname(__FILE__)}/database_sqlite.rb")

class App
  def self.action_get_user
    puts "Start App action"

    repo = UserRepo.new
    user = repo.get_by_id(111)

    puts "App |> User: #{user.name}"

    puts "Finish App action"

    "This is #{user.name} speaking!"
  end
end

# Override hardcoded behavior

class Database
  def log
    @log = @log || LogElastic.new
  end
end

class UserRepo
  def db
    @db = @db || DatabaseSqlite.new
  end
end
