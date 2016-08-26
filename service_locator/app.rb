require("#{File.dirname(__FILE__)}/service_locator.rb")
require("#{File.dirname(__FILE__)}/user_repo.rb")
require("#{File.dirname(__FILE__)}/database_sqlite.rb")
require("#{File.dirname(__FILE__)}/log_elastic.rb")

# setup service locator somewhere
# before app action call

#ServiceLocator.instance.set(:log, Log.new)
ServiceLocator.instance.set(:log, LogElastic.new)
#ServiceLocator.instance.set(:db, Database.new)
ServiceLocator.instance.set(:db, DatabaseSqlite.new)
# by wrapping it in Proc/lambda we can get new instance on each call (instead of cached instance)
ServiceLocator.instance.set(:user_repo, -> () { UserRepo.new })

class App
  def self.action_get_user
    puts "Start App action"

    repo = ServiceLocator.instance.get(:user_repo)
    user = repo.get_by_id(111)

    puts "App |> User: #{user.name}"
    puts "Finish App action"

    "This is #{user.name} speaking!"
  end
end
