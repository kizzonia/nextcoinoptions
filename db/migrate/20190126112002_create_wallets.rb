class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.string :btc_wallet
      t.string :eth_wallet
      t.integer :deposit_id
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end
