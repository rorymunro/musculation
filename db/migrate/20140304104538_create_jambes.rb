class CreateJambes < ActiveRecord::Migration
  def change
    create_table :jambes do |t|
      t.integer :squat3
      t.integer :fent_a_pied3
      t.integer :sauter3
      t.integer :user_id

      t.timestamps
    end
    add_index :jambes,[:user_id, :created_at]
  end
end
