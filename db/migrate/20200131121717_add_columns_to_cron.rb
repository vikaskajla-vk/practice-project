class AddColumnsToCron < ActiveRecord::Migration[6.0]
  def change
    add_column :crons, :active, :boolean
    add_column :crons, :tenant_id, :integer
  end
end
