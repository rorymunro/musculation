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
		params.require(:custom).permit(:developpe_couche1, :developpe_couchere, :developpe_incline1, :developpe_inclinere, :ecarte_couche, :ecarte_couchere, :ecarte_incline1, :ecarte_inclinere, :haltere_au_font1, :haltere_au_fontre, :squat1, :squatre, :rowing_menton1, :rowing_mentonre, :elevations_devant1, :elevations_devantre, :rowing_courbe1, :rowing_courbere, :pull_up1, :pull_upre, :deadlift1, :deadliftre, :row1, :rowre, :bicep_curl1, :bicep_curlre, :hammer1, :hammerre, :user_id
)
	end
def correct_user
      @custom = current_user.customs.find_by(id: params[:id])
      redirect_to custom_journal_url if @custom.nil?
    end


end
