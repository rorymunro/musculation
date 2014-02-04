class CreateShoulders < ActiveRecord::Migration
  def change
    create_table :shoulders do |t|
      t.integer :squat
      t.integer :rowing_menton
      t.integer :elevations_devant
      t.integer :rowing_courbe
      t.integer :user_id

      t.timestamps
    end
    add_index :shoulders,[:user_id, :created_at]
  end
end
