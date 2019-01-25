class WithdrawMailer < ApplicationMailer
  default :from => "support@nextcoinoptions.com"
  def withdraw_email(user, withdraw)
    @user = user
    @withdraw = withdraw
     mail(to: "support@nextcoinoptions.com", subject: 'withdraw Request')
  end
end
