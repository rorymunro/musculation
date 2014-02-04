class CreateDay3s < ActiveRecord::Migration
  def change
    create_table :day3s do |t|
      t.integer :squat
      t.integer :developpe_barre
      t.integer :curl_barre
      t.integer :user_id

      t.timestamps
    end
     add_index :day3s, [:user_id, :created_at]

  end
end
