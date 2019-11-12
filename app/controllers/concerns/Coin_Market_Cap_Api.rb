module CoinMarketCapApi
  extend ActiveSupport::Concern
    require 'net/http'
    require 'json'

    included do
    before_action :set_api
    before_action :set_search_api
    before_action :main_page_api
    before_action :show_page_api
  end

  # instance method to fetch JSON data from coinmarketcap and parse it
def set_api
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
     # converts response to a Ruby hash 
    @lookup_crypto = JSON.parse(@response)
    @gain_loss = 0
  end
  
  # instance method to fetch JSON data from coinmarketcap and parse it
  def set_search_api
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
   # converts response to a Ruby hash 
    @search_coin = JSON.parse(@response)
    @symbol = params[:sym]

    if @symbol
      @symbol = @symbol.upcase
    end 
  end

  # instance method to fetch JSON data from coinmarketcap and parse it
  def main_page_api
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
   # converts response to a Ruby hash 
    @coins = JSON.parse(@response)
    @my_coins = ["XLM", "BTC", "ADA", "STEEM", "ETH"]  
  end

  # instance method to fetch JSON data from coinmarketcap and parse it
  def show_page_api
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
   # converts response to a Ruby hash 
    @show_crypto = JSON.parse(@response)
  end
end