class CreatePoitrines < ActiveRecord::Migration
  def change
    create_table :poitrines do |t|
      t.integer :developpe_couche
      t.integer :developpe_incline
      t.integer :ecarte_couche
      t.integer :ecarte_incline
      t.integer :haltere_au_front
      t.integer :user_id

      t.timestamps
    end
    add_index :poitrines, [:user_id, :created_at]
  end
end
