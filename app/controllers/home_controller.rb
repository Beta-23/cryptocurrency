class HomeController < ApplicationController
  #Custome pages content to improve SEO
  def index
    @page_title = "Welcome | Cryptocurrency"
  
  end

  def about
    @page_title = "About | Cryptocurrency"

  end

  def search
    @page_title = "Search | Cryptocurrency"
   
  end
end
