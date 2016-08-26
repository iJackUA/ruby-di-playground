require("#{File.dirname(__FILE__)}/user_repo.rb")
require("#{File.dirname(__FILE__)}/database_sqlite.rb")
require("#{File.dirname(__FILE__)}/log_elastic.rb")

class App
  def self.action_get_user
    puts "Start App action"

    #log = Log.new
    log = LogElastic.new
    #db = Database.new
    db = DatabaseSqlite.new
    db.log = log

    repo = UserRepo.new
    repo.db = db

    user = repo.get_by_id(111)

    puts "App |> User: #{user.name}"
    puts "Finish App action"

    "This is #{user.name} speaking!"
  end
end
