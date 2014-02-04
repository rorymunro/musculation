class ShouldersController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
  	@shoulder = current_user.shoulders.build(shoulder_params)
  	if @shoulder.save
  		flash[:success] = "poste créé!"
  		redirect_to cuisses_epaules_url
  	else
  		@feeds_items = []
  		render 'static_pages/cuisses_epaules'
  	end
  end

  def destroy
  	@shoulder.destroy
  	redirect_to cuisses_epaules_url
  end

private

	def shoulder_params
		params.require(:shoulder).permit(:squat, :rowing_menton, :elevations_devant, :rowing_courbe)
	end
def correct_user
      @shoulder = current_user.shoulders.find_by(id: params[:id])
      redirect_to cuisses_epaules_url if @shoulder.nil?
    end


end
