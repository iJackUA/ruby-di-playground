class LogElastic
  def call(msg)
    puts "LogStorage::call |> #{store_message(msg)}"
  end

  def store_message(msg)
    "Send to Elastic. Msg: #{msg}"
  end
end
