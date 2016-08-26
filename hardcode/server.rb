require 'rack'
require './app.rb'

app = Proc.new do |env|
  response = App.action_get_user
  ['200', { 'Content-Type' => 'text/html' }, [response]]
end

Rack::Handler::WEBrick.run app
