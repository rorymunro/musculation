class CreateDay1s < ActiveRecord::Migration
  def change
    create_table :day1s do |t|
      t.integer :squat
      t.integer :souleve_de_terre
      t.integer :developpe_couche
      t.integer :user_id

      t.timestamps
    end
    add_index :day1s, [:user_id, :created_at]
  end
end
