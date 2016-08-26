class ServiceLocator
  private_class_method :new

  def self.instance
    @_instance ||= new
  end

  def initialize
    @services = {}
  end

  def set(name, service)
    @services[name] = service
  end

  def get(name)
    if @services.key?(name)
      service = @services[name]
    else
      raise "Error: Service '#{name}' is not configured!"
    end

    # if it's a lambda or Proc
    if service.is_a?(Proc)
      # resolve it
      service = service.call
    end

    service
  end
end
