require("#{File.dirname(__FILE__)}/user.rb")
require("#{File.dirname(__FILE__)}/log.rb")

class Database

  # @param id [Integer]
  # @return [User]
  def get_by_id(id)

    # pretend we got it from the DB :)
    user = User.new
    user.id = 111
    user.name = "Ievgen"

    log = Log.new
    log.call("Get user from Database via '#{connection}'")

    user
  end

  def connection
    'jdbc:postgresql://localhost:1234/users'
  end
end
