require 'minitest_helper'

class TestClient < Minitest::Test

  def setup
    Dotenv.load
  end

  def test_stores_coinbase_secrets_from_env
    client = Coinbase::Ledger::Client.new
    assert_equal ENV['COINBASE_API_KEY'], client.instance_variable_get('@api_key')
    assert_equal ENV['COINBASE_API_SECRET'], client.instance_variable_get('@api_secret')
  end

end
