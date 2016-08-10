require("#{File.dirname(__FILE__)}/log.rb")
require("#{File.dirname(__FILE__)}/user_storage.rb")

class App
  def self.action_get_user
    puts "App::run / start"

    storage = UserStorage.new
    user = storage.get_by_id(111)
    puts "User: #{user.name} | #{user.storage_id}"

    puts "App::run / finish"
  end
end

App.action_get_user
