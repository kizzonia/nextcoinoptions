class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :balance
      t.references :user, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
