require("#{File.dirname(__FILE__)}/user_storage_a.rb")
require("#{File.dirname(__FILE__)}/user_storage_b.rb")

class UserStorage
  # @param id [Integer]
  # @return [User]
  def get_by_id(id)
    storage = UserStorageA.new
    user = storage.get_by_id(123)
    user
  end
end
