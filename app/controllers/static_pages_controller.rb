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
  def jour1
    if signed_in?
    @day1 = current_user.day1s.build 
    @feed1_items = current_user.feed1.paginate(page: params[:page])

  end
end

def jour2
    if signed_in?
    @day2 = current_user.day2s.build 
    @feed2_items = current_user.feed2.paginate(page: params[:page])

  end
end
end
