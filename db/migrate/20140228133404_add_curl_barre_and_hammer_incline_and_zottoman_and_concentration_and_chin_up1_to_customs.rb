class AddCurlBarreAndHammerInclineAndZottomanAndConcentrationAndChinUp1ToCustoms < ActiveRecord::Migration
  def change
    
    add_column :customs, :hammer_incline, :integer
    add_column :customs, :hammer_inclinere, :string
    add_column :customs, :zottoman, :integer
    add_column :customs, :zottomanre, :string
    add_column :customs, :concentration, :integer
    add_column :customs, :concentrationre, :string
    add_column :customs, :chin_up1, :integer
    add_column :customs, :chin_up1re, :string
  end
end
