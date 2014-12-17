require "sinatra"

class Coinbase::Ledger::Web < Sinatra::Base

  set :public_folder, settings.root + '/web/public'
  set :views, settings.root + '/web/views'

  get "/" do
    erb :index
  end

end
