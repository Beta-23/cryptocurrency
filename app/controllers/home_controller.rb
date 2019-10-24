class HomeController < ApplicationController

    require 'net/http'
    require 'json'

  # instance method to fetch JSON data from coinmarketcap and parse it

  def index
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
   # converts response to a Ruby hash 
    @coins = JSON.parse(@response)
    @my_coins = ["XLM", "BTC", "ADA", "STEEM", "ETH"]
  end

  def about
  end

  def search
    @symbol = params[:sym] 
  end
end
