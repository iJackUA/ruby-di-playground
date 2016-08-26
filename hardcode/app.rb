require("#{File.dirname(__FILE__)}/user_repo.rb")

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

class Log
  def store_message(msg)
    "Send to Elastic. Msg: #{msg}"
  end
end

class Database
  def connection
    # different logic could be here!
    'jdbc:sqlite://skynet:1234/humanoids'
  end
end
