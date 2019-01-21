class CreateWithdraws < ActiveRecord::Migration[5.2]
  def change
    create_table :withdraws do |t|
      t.integer :amount
      t.string :payment_type
      t.string :plan
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
