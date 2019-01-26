class Wallet < ApplicationRecord
  belongs_to :admin_user
  belongs_to :deposit
end
