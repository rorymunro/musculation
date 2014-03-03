class AddLandmineToCustoms < ActiveRecord::Migration
  def change
    add_column :customs, :landmine, :integer
    add_column :customs, :landminere, :string
    add_column :customs, :araignee, :integer
    add_column :customs, :araigneere, :string
    add_column :customs, :releves_jambes, :integer
    add_column :customs, :releves_jambesre, :string
    add_column :customs, :plank, :integer
    add_column :customs, :plankre, :string
    add_column :customs, :haltere_corbure, :integer
    add_column :customs, :haltere_corburere, :string
    add_column :customs, :releves_suspension, :integer
    add_column :customs, :releves_suspensionre, :string
    add_column :customs, :haussement_epaules, :integer
    add_column :customs, :haussement_epaulesre, :string
    add_column :customs, :rowing_debout, :integer
    add_column :customs, :rowing_deboutre, :string
    add_column :customs, :couche_plaque, :integer
    add_column :customs, :couche_plaquere, :string
  end
end
