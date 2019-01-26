ActiveAdmin.register Wallet do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :btc_wallet, :eth_wallet, :deposit_id, :admin_user_id
#
# or
#
form do |f|

 f.inputs do
   f.input :admin_user_id, :label => 'Admin', :as => :select, :collection => AdminUser.all.map{|u| ["#{u.email}", u.id]}
   f.input :btc_wallet
   f.input :eth_wallet



 end
 f.submit :submit
end
# permit_params do

#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
def display_name
 self.email
end
end
