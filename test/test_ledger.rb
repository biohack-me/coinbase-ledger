require 'minitest_helper'

class TestLedger < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Coinbase::Ledger::VERSION
  end

  def test_initializes
    ledger = ::Coinbase::Ledger.new
    refute_empty ledger.apps
  end
end
