require("#{File.dirname(__FILE__)}/user.rb")
require("#{File.dirname(__FILE__)}/log.rb")

class UserStorageB

  # @param id [Integer]
  # @return [User]
  def get_by_id(id)
    user = User.new
    user.name = "Ievgen"
    user.storage_id = "B"

    log = Log.new
    log.call("Inside Storage B")

    user
  end
end
