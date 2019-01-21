class AddStatusToWithdraws < ActiveRecord::Migration[5.2]
  def change
    add_column :withdraws, :status, :boolean
  end
end
