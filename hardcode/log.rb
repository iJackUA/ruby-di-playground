require("#{File.dirname(__FILE__)}/log_storage.rb")

class Log
  def call(msg)
    logger = LogStorage.new
    logger.call(msg)
  end
end
