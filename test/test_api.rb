require 'minitest_helper'
require 'rack/test'

class TestAPI < Minitest::Test
  include Rack::Test::Methods

  def setup
    Dotenv.load
  end

  def app
    Coinbase::Ledger::API
  end

  def test_gets_balance
    get '/api/v1/balance.json'
    json = JSON.parse(last_response.body)
    assert json.key? 'amount'
    assert json.key? 'currency'
  end

end
