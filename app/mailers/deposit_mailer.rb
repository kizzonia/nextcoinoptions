class DepositMailer < ApplicationMailer
  default :from => "support@nextcoinoptions.com"
  def deposit_email(user, deposit)
    @user = user
    @deposit = deposit
     mail(to: "support@nextcoinoptions.com", subject: 'deposit Request')
  end
end
