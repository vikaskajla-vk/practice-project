class CreateSubscribers < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :slack_id
      t.string :email_id

      t.timestamps
    end
  end

end
