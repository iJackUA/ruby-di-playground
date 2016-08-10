require("#{File.dirname(__FILE__)}/user.rb")
require("#{File.dirname(__FILE__)}/log.rb")

class UserStorageA

  # @param id [Integer]
  # @return [User]
  def get_by_id(id)
    user = User.new
    user.name = "Ievgen"
    user.storage_id = "A"

    log = Log.new
    log.call("Inside Storage A")

    user
  end
end
