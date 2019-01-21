class AddStatusToDeposits < ActiveRecord::Migration[5.2]
  def change
    add_column :deposits, :status, :boolean
  end
end
