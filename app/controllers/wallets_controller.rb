class WalletsController < ApplicationController

  def index
    @wallets = Wallet.all
  end

  def new
    @wallet = Wallet.new
  end
end
