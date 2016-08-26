require("#{File.dirname(__FILE__)}/user.rb")

class Database

  def initialize
    puts "Database::initialize"
    @log = ServiceLocator.instance.get(:log)
  end

  # @param id [Integer]
  # @return [User]
  def get_by_id(id)

    # pretend we got it from the DB :)
    user = User.new
    user.id = 111
    user.name = "Ievgen"

    @log.call("get_by_id via '#{connection}'")

    user
  end

  def connection
    # different logic could be here!
    'jdbc:postgresql://localhost:1234/users'
  end
end
