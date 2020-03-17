class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references :subscriber
      t.references :cron

      t.timestamps
    end
  end
end
