class LogImplY
  def call(msg)
    puts "#{self.class.to_s}::call. Msg: #{msg}"
  end
end
