class JambesController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
  	@jambe = current_user.jambes.build(jambe_params)
  	if @jambe.save
  		flash[:success] = "poste créé!"
  		redirect_to jambes01_url
  	else
  		@feedj_items = []
  		render 'static_pages/jambes01'
  	end
  end

  def destroy
  	@jambe.destroy
  	redirect_to jambes01_url
  end

private

	def jambe_params
		params.require(:jambe).permit(:squat3, :fent_a_pied3, :sauter3)
	end
def correct_user
      @jambe = current_user.jambes.find_by(id: params[:id])
      redirect_to jambes01_url if @jambe.nil?
    end


end

