class AddFentAPiedAndSquatUnHaltereAndHipPousseeAndSauterSurUneBoiteAndMolletsElevationAndSouleveJambesRaidesAndSnatchSouleveToCustoms < ActiveRecord::Migration
  def change
    add_column :customs, :fent_a_pied, :integer
    add_column :customs, :fent_a_piedre, :string
    add_column :customs, :squat_un_haltere, :integer
    add_column :customs, :squat_un_halterere, :string
    add_column :customs, :hip_poussee, :integer
    add_column :customs, :hip_pousseere, :string
    add_column :customs, :sauter_sur_une_boite, :integer
    add_column :customs, :sauter_sur_une_boitere, :string
    add_column :customs, :mollets_elevation, :integer
    add_column :customs, :mollets_elevationre, :string
    add_column :customs, :souleve_jambes_raides, :integer
    add_column :customs, :souleve_jambes_raidesre, :string
    add_column :customs, :snatch_souleve, :integer
    add_column :customs, :snatch_soulevere, :string
  end
end
