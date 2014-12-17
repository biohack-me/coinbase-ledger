require "coinbase"

class Coinbase::Ledger::Client < Coinbase::Client

  def initialize
    key = ENV['COINBASE_API_KEY']
    secret = ENV['COINBASE_API_SECRET']
    super key, secret
  end

end
