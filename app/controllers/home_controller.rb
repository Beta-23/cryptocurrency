class HomeController < ApplicationController

    require 'net/http'
    require 'json'

  # instance method to fetch JSON data from coinmarketcap and parse it
  
  def index
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
  end

  def about
  end
end
