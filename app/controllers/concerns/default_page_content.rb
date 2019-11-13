module DefaultPageContent
  extend ActiveSupport::Concern

  included do
  before_action :set_page_default

  end
  # Sets SEO for crypto app
  def set_page_default
    @page_title = "Cryptocurrency"
    @seo_keywords = ['Bitcoin',
                    'Ethereum',
                    'Ripple',
                    'Bitcoin Cash',
                    'What is Crypto',
                    'Why Cryptocurrency',
                    'What is Coinbase',
                    'Buy and sell cryptocurrency']
  end
end