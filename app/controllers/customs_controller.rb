class CustomsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
  	@custom = current_user.customs.build(custom_params)
  	if @custom.save
  		flash[:success] = "poste créé!"
  		redirect_to custom_journal_url
  	else
  		@feedc_items = []
  		render 'static_pages/custom_journal'
  	end
  end

  def destroy
  	@custom.destroy
  	redirect_to custom_journal_url
  end

private

	def custom_params
		params.require(:custom).permit(:exercise_custom, :exercise_customre, :couche_plaque, :couche_plaquere, :rowing_debout, :rowing_deboutre, :haussement_epaules, :haussement_epaulesre, :releves_suspension, :releves_suspensionre, :haltere_corbure, :haltere_corburere, :plank, :plankre, :releves_jambes, :releves_jambesre, :araignee, :araigneere, :landmine, :landminere, :halteres_allonge, :halteres_allongere, :elevations_delt, :elevations_deltre, :rowing_delt, :rowing_deltre, :car_driver, :car_driverre, :arnold, :arnoldre, :developpe_militaire, :developpe_militairere, :elevations_devant2, :elevations_devant2re, :clean_presse, :clean_pressere, :elevations_lat, :elevations_latre, :lineaire_jammer, :lineaire_jammerre, :developpe_haltere2, :developpe_haltere2re, :rowing_barre_long1, :rowing_barre_long1re, :inverse_rowing, :inverse_rowingre, :rowing_barre_long, :rowing_barre_longre, :rowing_un_bras, :rowing_un_brasre, :poingnee_inverse_rowing, :poingnee_inverse_rowingre, :superman, :supermanre, :souleve_jambes_raides1, :souleve_jambes_raides1re, :hyperextensions, :hyperextensionsre, :chin_up1, :chin_up1re, :zottoman, :zottomanre, :concentration, :concentrationre, :hammer_incline, :hammer_inclinere, :extensions_tete, :extensions_tetere, :body_up, :body_upre, :dip_de_banc, :dip_de_bancre, :ez_barre_front, :ez_barre_frontre, :dip_tricep, :dip_tricepre, :developpe_decline, :developpe_declinere, :pompes, :pompesre, :pompes_surleves, :pompes_surlevesre, :horloge_pompes, :horloge_pompesre, :dips_poitrine, :dips_poitrinere, :pompes_mains_surleves, :pompes_mains_surlevesre, :developpe_couche1, :developpe_couchere, :developpe_incline1, :developpe_inclinere, :ecarte_couche, :ecarte_couchere, :ecarte_incline1, :ecarte_inclinere, :haltere_au_font1, :haltere_au_fontre, :squat1, :squatre, :rowing_menton1, :rowing_mentonre, :elevations_devant1, :elevations_devantre, :rowing_courbe1, :rowing_courbere, :pull_up1, :pull_upre, :deadlift1, :deadliftre, :row1, :rowre, :bicep_curl1, :bicep_curlre, :hammer1, :hammerre, :fent_a_pied, :fent_a_piedre, :squat_un_haltere, :squat_un_halterere, :hip_poussee, :hip_pousseere, :sauter_sur_une_boite, :sauter_sur_une_boitere, :mollets_elevation, :mollets_elevationre, :souleve_jambes_raides, :souleve_jambes_raidesre, :snatch_souleve, :snatch_soulevere, :user_id
)
	end
def correct_user
      @custom = current_user.customs.find_by(id: params[:id])
      redirect_to custom_journal_url if @custom.nil?
    end


end
