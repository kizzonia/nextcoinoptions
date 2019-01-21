class TradesController < InheritedResources::Base

  private

    def trade_params
      params.require(:trade).permit(:currency, :deposit, :expiration, :status, :tradetype, :entry, :rate, :return, :user_id)
    end
end

