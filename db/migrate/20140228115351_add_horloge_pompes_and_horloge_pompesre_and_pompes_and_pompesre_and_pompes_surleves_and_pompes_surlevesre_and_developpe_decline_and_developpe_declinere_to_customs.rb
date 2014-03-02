class AddHorlogePompesAndHorlogePompesreAndPompesAndPompesreAndPompesSurlevesAndPompesSurlevesreAndDeveloppeDeclineAndDeveloppeDeclinereToCustoms < ActiveRecord::Migration
  def change
  	add_column :customs, :horloge_pompes, :integer
    add_column :customs, :horloge_pompesre, :string
    add_column :customs, :pompes, :integer
    add_column :customs, :pompesre, :string
    add_column :customs, :pompes_surleves, :integer
    add_column :customs, :pompes_surlevesre, :string
    add_column :customs, :developpe_decline, :integer
    add_column :customs, :developpe_declinere, :string
  end
end
