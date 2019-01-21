class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :type
      t.string :bitcoin_address
      t.string :amount
      t.string :email

      t.timestamps
    end
  end
end
