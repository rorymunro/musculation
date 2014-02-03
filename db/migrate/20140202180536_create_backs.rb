class CreateBacks < ActiveRecord::Migration
  def change
    create_table :backs do |t|
      t.integer :pull_up
      t.integer :deadlift
      t.integer :row
      t.integer :bicep_curl
      t.integer :hammer
      t.integer :user_id

      t.timestamps
    end
    add_index :backs, [:user_id, :created_at]
  end
end
