class Scrap
  require 'nokogiri'
  require 'open-uri'
  def initialize
    @url = 'https://coinmarketcap.com/all/views/all/'
  end
  def trader_ombreux
    page = Nokogiri::HTML(open(@url))
    find = page.css('a[class = "price"]')
    find.each do |type|
      value = type["data-usd"]
      name = type["href"].gsub!("/currencies/","").gsub!("/#markets","")
      @crypto = Devise.create(name: name,value: value)
      @crypto.save
    end
  end
  def search_crypto(crypto)
    @monet = Devise.all
    @monet = Devise.where(name: crypto)
    return @monet
  end
  def perform
    trader_ombreux
  end
end
