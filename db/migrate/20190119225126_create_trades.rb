class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades do |t|
      t.string :currency
      t.string :deposit
      t.datetime :expiration
      t.boolean :status
      t.string :tradetype
      t.string :entry
      t.string :rate
      t.string :return
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
