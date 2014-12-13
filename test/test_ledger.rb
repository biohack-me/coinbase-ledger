require 'minitest_helper'

class TestLedger < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Coinbase::Ledger::VERSION
  end

  def test_autoloads_web_class
    refute_nil ::Coinbase::Ledger::Web
  end

  def test_autoloads_api_class
    refute_nil ::Coinbase::Ledger::API
  end
end
