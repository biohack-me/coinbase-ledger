require "rack"
require "coinbase"

class Coinbase::Ledger < Rack::Cascade

  autoload :VERSION, "coinbase/ledger/version"

  autoload :Web, "coinbase/ledger/web"
  autoload :API, "coinbase/ledger/api"

  def initialize
    super [Web, API]
  end

end
