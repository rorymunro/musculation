class AddPoidsToUsers < ActiveRecord::Migration
  def change
  	    add_column :users, :poids, :integer
  end
end
