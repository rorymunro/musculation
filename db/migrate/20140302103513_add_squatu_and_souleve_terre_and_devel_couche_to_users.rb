class AddSquatuAndSouleveTerreAndDevelCoucheToUsers < ActiveRecord::Migration
  def change
    add_column :users, :squatu, :integer
    add_column :users, :souleve_terre, :integer
    add_column :users, :devel_couche, :integer
  end
end
