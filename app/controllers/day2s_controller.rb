class Day2sController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
  	@day2 = current_user.day2s.build(day2_params)
  	if @day2.save
  		flash[:success] = "poste créé!"
  		redirect_to jour2_url
  	else
  		@feed2_items = []
  		render 'static_pages/jour2'
  	end
  end

  def destroy
  	@day2.destroy
  	redirect_to jour2_url
  end

private

	def day2_params
		params.require(:day2).permit(:pull_up, :developpe_nuke, :developpe_incline)
	end
def correct_user
      @day2 = current_user.day2s.find_by(id: params[:id])
      redirect_to jour2_url if @day2.nil?
    end


end
