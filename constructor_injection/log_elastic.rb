require("#{File.dirname(__FILE__)}/log.rb")

class LogElastic < Log
  def store_message(msg)
    "Send to Elastic. Msg: #{msg}"
  end
end
