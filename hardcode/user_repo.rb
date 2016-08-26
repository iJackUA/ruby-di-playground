require("#{File.dirname(__FILE__)}/database.rb")

class UserRepo
  # @param id [Integer]
  # @return [User]
  def get_by_id(id)
    storage = Database.new
    user = storage.get_by_id(123)
    user
  end
end
