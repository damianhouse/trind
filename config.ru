require 'rack'
require 'rack/cors'
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: :get
  end
end

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
