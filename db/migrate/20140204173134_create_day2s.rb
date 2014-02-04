class CreateDay2s < ActiveRecord::Migration
  def change
    create_table :day2s do |t|
      t.integer :pull_up
      t.integer :developpe_nuque
      t.integer :developpe_incline
      t.integer :user_id

      t.timestamps
    end
        add_index :day2s, [:user_id, :created_at]

  end
end
