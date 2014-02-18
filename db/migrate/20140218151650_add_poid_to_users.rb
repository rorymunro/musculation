class AddPoidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :poid, :integer
  end
end
