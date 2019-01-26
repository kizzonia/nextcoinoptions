class WalletsController < InheritedResources::Base
  before_action :authenticate_adminuser!, except: [:index, :show]

  private

    def wallet_params
      params.require(:wallet).permit(:btc_wallet, :Eth_wallet, :deposit_id, :admin_user_id)
    end
end
