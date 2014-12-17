require "grape"
require "garner/mixins/rack"

class Coinbase::Ledger::API < Grape::API
  helpers Garner::Mixins::Rack
  use Rack::ConditionalGet
  use Rack::ETag

  version 'v1'
  format :json
  prefix :api

  helpers do
    def coinbase
      @coinbase ||= Coinbase::Ledger::Client.new
    end

    def balance
      @balance ||= coinbase.balance
    end

    def cache &block
      garner.options expires_in: 15.minutes, &block
    end
  end

  resource :balance do
    get do
      cache do
        {
          amount: balance,
          currency: balance.currency
        }
      end
    end
  end

end
