class CategoriesController < ApplicationController  
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy 

  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)
    
    if @category.save
      flash[:notice] = "Category was successfully created."
      redirect_to forums_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    
    if @category.update_attributes(params[:category])
      flash[:notice] = "Category was updated successfully."
      redirect_to forums_url
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    
    if @category.destroy
      flash[:notice] = "Category was deleted."
      redirect_to forums_url
    end
  end
private

  def category_params
    params.require(:category).permit(:title, :state, :position, :category_id)
  end
  def correct_user
      @category = current_user.categories.find_by(id: params[:id])
      redirect_to categories_url if @category.nil?
    end


  
end