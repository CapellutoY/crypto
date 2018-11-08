class HomeController < ApplicationController
  def index
    if Devise.first.nil?
      @cryptos = Scrap.new.perform
    end
    @cryptos = Devise.all

    if Devise.find_by(name: params["crypto"])
      @crypto = Devise.find_by(name: params["crypto"])
    end
  end
end
