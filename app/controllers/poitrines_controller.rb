class PoitrinesController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

 
  def create
  	@poitrine = current_user.poitrines.build(poitrine_params)
  	if @poitrine.save
  		flash[:success] = "poste créé!"
  		redirect_to poitrin_url
  	else
  		@feedp_items = []
  		render 'static_pages/poitrin'
  	end
  end

  def destroy
  	@poitrine.destroy
  	redirect_to poitrin_url
  end

private

	def poitrine_params
		params.require(:poitrine).permit(:developpe_couche, :developpe_incline, :ecarte_couche, :ecarte_incline, :haltere_au_front)
	end
def correct_user
      @poitrine = current_user.poitrines.find_by(id: params[:id])
      redirect_to poitrin_url if @poitrine.nil?
    end


end