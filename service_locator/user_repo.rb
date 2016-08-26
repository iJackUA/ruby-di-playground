require("#{File.dirname(__FILE__)}/database.rb")

class UserRepo

  def initialize
    puts "UserRepo::initialize"
    @db = ServiceLocator.instance.get(:db)
  end

  # @param id [Integer]
  # @return [User]
  def get_by_id(id)
    storage = @db
    user = storage.get_by_id(123)
    user
  end
end
