require("#{File.dirname(__FILE__)}/log_impl_x.rb")
require("#{File.dirname(__FILE__)}/log_impl_y.rb")

class Log
  def call(msg)
    logger = LogImplX.new
    logger.call(msg)
  end
end
