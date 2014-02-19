class ForumsController < ApplicationController   
before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy 
  def show
    @forum = Forum.find(params[:id])
  end
  
  def new
    @forum = Forum.new
  end
  
  def create
    @forum = Forum.new(forum_params)
    
    if @forum.save
      flash[:notice] = "Forum was successfully created."
      redirect_to forums_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @forum = Forum.find(params[:id])
  end
  
  def update
    @forum = Forum.find(params[:id])
    
    if @forum.update_attributes(params[:forum])
      flash[:notice] = "Forum was updated successfully."
      redirect_to forum_url(@forum)
    end
  end
  
  def destroy
    @forum = Forum.find(params[:id])
    
    if @forum.destroy
      flash[:notice] = "Category was deleted."
      redirect_to forums_url
    end
  end
private

  def forum_params
    params.require(:forum).permit(:title, :description, :state, :position, :category_id)
  end
  def correct_user
      @forum = current_user.forums.find_by(id: params[:id])
      redirect_to forums_url if @forum.nil?
    end


  
end