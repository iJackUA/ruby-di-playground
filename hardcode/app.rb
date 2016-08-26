require("#{File.dirname(__FILE__)}/user_repo.rb")

class App
  def self.action_get_user
    puts "Start App action"

    storage = UserRepo.new
    user = storage.get_by_id(111)
    puts "App |> User: #{user.name}"

    puts "Finish App action"
    "This is #{user.name} speaking!"
  end
end
