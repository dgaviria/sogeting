class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :facebook_id
      t.string :f_name
      t.string :m_name
      t.string :l_name
      t.string :gender
      t.string :link
      t.string :hometown
      t.string :bio
      t.integer :birth_day
      t.integer :birth_month
      t.integer :birth_year
      t.string :email
      t.string :timezone
      t.string :location
      t.string :political
      t.string :quotes
      t.string :relationship_status
      t.string :religion
      t.string :website

      t.timestamps
    end
  end
end
