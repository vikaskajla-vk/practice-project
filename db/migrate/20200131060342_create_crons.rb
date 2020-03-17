class CreateCrons < ActiveRecord::Migration[6.0]
  def change
    create_table :crons do |t|
      t.string :name
      t.integer :ping_freq
      t.integer :exec_time

      t.timestamps
    end
  end
end
