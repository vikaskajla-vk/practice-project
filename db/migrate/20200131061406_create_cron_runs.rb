class CreateCronRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :cron_runs do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :alert
      t.float :run_time
      t.references :cron, null: false, foreign_key: true

      t.timestamps
    end
  end
end
