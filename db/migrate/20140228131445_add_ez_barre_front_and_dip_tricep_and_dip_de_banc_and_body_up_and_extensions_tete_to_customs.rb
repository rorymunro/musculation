class AddEzBarreFrontAndDipTricepAndDipDeBancAndBodyUpAndExtensionsTeteToCustoms < ActiveRecord::Migration
  def change
    add_column :customs, :ez_barre_front, :integer
    add_column :customs, :ez_barre_frontre, :string
    add_column :customs, :dip_tricep, :integer
    add_column :customs, :dip_tricepre, :string
    add_column :customs, :dip_de_banc, :integer
    add_column :customs, :dip_de_bancre, :string
    add_column :customs, :body_up, :integer
    add_column :customs, :body_upre, :string
    add_column :customs, :extensions_tete, :integer
    add_column :customs, :extensions_tetere, :string
  end
end
