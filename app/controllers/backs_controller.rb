class BacksController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
  	@back = current_user.backs.build(back_params)
  	if @back.save
  		flash[:success] = "poste créé!"
  		redirect_to dos_url
  	else
  		@feed_items = []
  		render 'static_pages/dos'
  	end
  end

  def destroy
  	@back.destroy
  	redirect_to dos_url
  end

private

	def back_params
		params.require(:back).permit(:pull_up, :deadlift, :row, :bicep_curl, :hammer)
	end
def correct_user
      @back = current_user.backs.find_by(id: params[:id])
      redirect_to dos_url if @back.nil?
    end


end

