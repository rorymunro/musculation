class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user, only: :destroy

def index
  @users = User.paginate(page: params[:page])
end


def show
        @user = User.find(params[:id])
        @backs = @user.backs.paginate(page: params[:page])
    @poitrines = @user.poitrines.paginate(page: params[:page])
    @shoulders = @user.shoulders.paginate(page: params[:page])
    @day1s = @user.day1s.paginate(page: params[:page])
    @day2s = @user.day2s.paginate(page: params[:page])
    @day3s = @user.day3s.paginate(page: params[:page])

  end


  def new
  	@user = User.new
  end

def destroy
  User.find(params[:id]).destroy
  flash[:success] = "User deleted."
  redirect_to users_url
end

  def new
    @user = User.new
  end



def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
    	flash[:success] = "Bienvenue a musculation!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
end


def update 
  @user = User.find(params[:id])
  if @user.update_attributes(user_params)
    flash[:success] = "Profile updated"
    redirect_to @user

  else
    render 'edit'
  end
end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :bench,
                                   :password_confirmation)
    end

    

     def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end


  
  end