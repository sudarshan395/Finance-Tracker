class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
  client = IEX::Api::Client.new(
    publishable_token: 'Tpk_d3773177900644bc81aa5c4a962d0dad',
    secret_token: 'secret_token',
    endpoint: 'https://sandbox.iexapis.com/v1')
    new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name, last_price: client.price(ticker_symbol))
  end
end
