class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.text :text
      t.integer :user_id
      t.integer :shout_to_id

      t.timestamps
    end
  end
end
