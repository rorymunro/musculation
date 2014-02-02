class WeightsController < ApplicationController
	before_action :signed_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]

def new
	@weight = Weight.new
end

def create
	@weight = Weight.new(weight_params)
	if @weight.save
		redirect_to @weight
			
	else
		render 'new'
	end
end

def show
	@weight = Weight.new(weight_params)
end

private
def weight_params
	params.require(:weight).permit(:bench, :inline_bench, :pec_flight, :incline_pec)
end

def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

     def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end