class AddLocationAndAgeAndTailleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location, :string
    add_column :users, :age, :integer
    add_column :users, :taille, :integer
  end
end
