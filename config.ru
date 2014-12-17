if ENV['RACK_ENV'] == 'development'
  require "dotenv"
  Dotenv.load
end

require ::File.expand_path('../lib/coinbase/ledger',  __FILE__)

run Coinbase::Ledger.new
