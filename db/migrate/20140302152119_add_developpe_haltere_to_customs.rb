class AddDeveloppeHaltereToCustoms < ActiveRecord::Migration
  def change
    add_column :customs, :developpe_haltere2, :integer
    add_column :customs, :developpe_haltere2re, :string
    add_column :customs, :lineaire_jammer, :integer
    add_column :customs, :lineaire_jammerre, :string
    add_column :customs, :elevations_lat, :integer
    add_column :customs, :elevations_latre, :string
    add_column :customs, :clean_presse, :integer
    add_column :customs, :clean_pressere, :string
    add_column :customs, :elevations_devant2, :integer
    add_column :customs, :elevations_devant2re, :string
    add_column :customs, :developpe_militaire, :integer
    add_column :customs, :developpe_militairere, :string
    add_column :customs, :arnold, :integer
    add_column :customs, :arnoldre, :string
    add_column :customs, :car_driver, :integer
    add_column :customs, :car_driverre, :string
    add_column :customs, :rowing_delt, :integer
    add_column :customs, :rowing_deltre, :string
    add_column :customs, :elevations_delt, :integer
    add_column :customs, :elevations_deltre, :string
    add_column :customs, :halteres_allonge, :integer
    add_column :customs, :halteres_allongere, :string

  end
end
