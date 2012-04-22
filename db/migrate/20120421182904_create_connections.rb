class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :user_a
      t.integer :user_b

      t.timestamps
    end
  end
end
