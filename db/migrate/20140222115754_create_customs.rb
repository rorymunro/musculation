class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
      t.integer :developpe_couche1
      t.string :developpe_couchere
      t.integer :developpe_incline1
      t.string :developpe_inclinere
      t.integer :ecarte_couche
      t.string :ecarte_couchere
      t.integer :ecarte_incline1
      t.string :ecarte_inclinere
      t.integer :haltere_au_font1
      t.string :haltere_au_fontre
      t.integer :squat1
      t.string :squatre
      t.integer :rowing_menton1
      t.string :rowing_mentonre
      t.integer :elevations_devant1
      t.string :elevations_devantre
      t.integer :rowing_courbe1
      t.string :rowing_courbere
      t.integer :pull_up1
      t.string :pull_upre
      t.integer :deadlift1
      t.string :deadliftre
      t.integer :row1
      t.string :rowre
      t.integer :bicep_curl1
      t.string :bicep_curlre
      t.integer :hammer1
      t.string :hammerre
      t.integer :user_id

      t.timestamps
    end
    add_index :customs, [:user_id, :created_at]
  end
end
