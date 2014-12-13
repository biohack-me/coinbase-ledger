require "rack"
require "coinbase"

class Coinbase::Ledger < Rack::Cascade

  require_relative "ledger/web"
  require_relative "ledger/api"
  require_relative "ledger/version"

  def initialize
    super [Web, API]
  end

end
