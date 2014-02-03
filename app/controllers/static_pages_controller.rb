class StaticPagesController < ApplicationController
  def home
    if signed_in?
    
end
  end

  def regime
  end

  def forum
  	
  end
  def about

  end

  def standard
  end
  def dos
    @back = current_user.backs.build
    @feed_items = current_user.feed.paginate(page: params[:page])
  end

end
