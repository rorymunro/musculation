class AddDipsPoitrineAndDipsPoitrinereAndPompesMainsSurlevesAndPompesMainsSurlevesreToCustoms < ActiveRecord::Migration
  def change

  	add_column :customs, :dips_poitrine, :integer
    add_column :customs, :dips_poitrinere, :string
    add_column :customs, :pompes_mains_surleves, :integer
    add_column :customs, :pompes_mains_surlevesre, :string
    
  end
end
