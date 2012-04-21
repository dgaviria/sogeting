class CreateWinks < ActiveRecord::Migration
  def change
    create_table :winks do |t|
      t.integer :user_id
      t.integer :friend_id
      t.integer :match_id
      t.string :status

      t.timestamps
    end
  end
end
