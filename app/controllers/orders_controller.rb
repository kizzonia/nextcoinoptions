class OrdersController < InheritedResources::Base
  layout "accounts"
  before_action :authenticate_user!

  def index

  end

  private

    def order_params
      params.require(:order).permit(:type, :bitcoin_address, :amount, :email)
    end
end
