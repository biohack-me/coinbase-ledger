# Coinbase Ledger

An App to display the Bitcoin balance of a Coinbase account.

Acts as a cached proxy to the balance endpoint of the official Coinbase API.

## Development

To run the application locally, copy the `.env.sample` file to `.env` and fill your own Coinbase API key and secret. Then run:

```bash
bundle install
rackup
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
