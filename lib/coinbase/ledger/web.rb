require "sinatra"
# require "garner/mixins/rack"

class Coinbase::Ledger::Web < Sinatra::Base
  # helpers Garner::Mixins::Rack
  # use Rack::ConditionalGet
  # use Rack::ETag

  set :public_folder, settings.root + '/web/public'
  set :views, settings.root + '/web/views'

  get "/" do
    erb :index
  end

end
