class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
    	t.belongs_to :user
      t.integer :user_id
      t.integer :bench
      t.integer :incline_bench
      t.integer :pec_flight
      t.integer :incline_pec

      t.timestamps
    end
    add_index :weights, :user_id
end
end
