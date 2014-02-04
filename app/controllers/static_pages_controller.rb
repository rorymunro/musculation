class StaticPagesController < ApplicationController
  def home
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
    if signed_in?
    @back = current_user.backs.build
    @feed_items = current_user.feed.paginate(page: params[:page])
  end
end

  def poitrin
    if signed_in?
    @poitrine = current_user.poitrines.build 
    @feedp_items = current_user.feedp.paginate(page: params[:page])

  end
end
def cuisses_epaules
    if signed_in?
    @shoulder = current_user.shoulders.build 
    @feeds_items = current_user.feeds.paginate(page: params[:page])

  end
end
end
