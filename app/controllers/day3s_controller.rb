class Day3sController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
  	@day3 = current_user.day3s.build(day3_params)
  	if @day3.save
  		flash[:success] = "poste créé!"
  		redirect_to jour3_url
  	else
  		@feed3_items = []
  		render 'static_pages/jour3'
  	end
  end

  def destroy
  	@day3.destroy
  	redirect_to jour3_url
  end

private

	def day3_params
		params.require(:day3).permit(:squat, :developpe_barre, :curl_barre)
	end
def correct_user
      @day3 = current_user.day3s.find_by(id: params[:id])
      redirect_to jour3_url if @day3.nil?
    end


end