class WalletsController < ApplicationController

  def index
    @wallets = Wallet.all
  end

  def new
    @wallet = Wallet.new
  end

  def create
    @wallet = Wallet.create(wallet_params)
    if @wallet.invalid?
      flash[:error] = 'The data you entered is invalid'
    end

    redirect_to root_path
  end

  private

  def wallet_params
    params.require(:wallet).permit(:expense, :amount)
  end
end
