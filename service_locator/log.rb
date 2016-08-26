class Log
  def initialize
    puts "Log::initialize"
  end

  def call(msg)
    puts "LogStorage::call |> #{store_message(msg)}"
  end

  def store_message(msg)
    "Save to File. Msg: #{msg}"
  end
end
