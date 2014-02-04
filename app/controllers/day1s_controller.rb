class Day1sController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
  	@day1 = current_user.day1s.build(day1_params)
  	if @day1.save
  		flash[:success] = "poste créé!"
  		redirect_to jour1_url
  	else
  		@feed1_items = []
  		render 'static_pages/jour1'
  	end
  end

  def destroy
  	@day1.destroy
  	redirect_to jour1_url
  end

private

	def day1_params
		params.require(:day1).permit(:squat, :souvele_de_terre, :developpe_couche)
	end
def correct_user
      @day1 = current_user.day1s.find_by(id: params[:id])
      redirect_to jour1_url if @day1.nil?
    end


end
