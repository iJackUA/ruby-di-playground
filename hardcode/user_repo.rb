require("#{File.dirname(__FILE__)}/database.rb")
require("#{File.dirname(__FILE__)}/log.rb")

class UserRepo

  def db
    @db = @db || Database.new
    @db
  end

  # @param id [Integer]
  # @return [User]
  def get_by_id(id)
    storage = db
    user = storage.get_by_id(123)
    user
  end
end
