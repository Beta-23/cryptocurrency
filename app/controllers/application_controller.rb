class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery with: :exception
  include CoinMarketCapApi
  include DefaultPageContent
end
