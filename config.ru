if ENV['RACK_ENV'] == 'development'
  require "dotenv"
  Dotenv.load
end

require ::File.expand_path('../lib/coinbase/ledger',  __FILE__)

require 'rack/cors'

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: :get
  end
end

run Coinbase::Ledger.new
