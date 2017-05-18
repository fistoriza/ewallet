class WalletsController < ApplicationController
  # before_action :authenticate_user!, only: [:create]

  def index
    @wallets = Wallet.all
  end

  def create
    @wallet = Wallet.create(wallet_params)
    if @wallet.invalid?
      flash[:error] = 'The data you entered is invalid. Please try again.'
    end

    redirect_to root_path
  end

  private

  def wallet_params
    params.require(:wallet).permit(:expense, :amount)
  end
end
