class StaticPagesController < ApplicationController
  def home
  end

  def regime
  end

  def forum
  	
  end
  def about

  end
  def custom_regime
  end

  def standard
  end
  def dos
    if signed_in?
    @back = current_user.backs.build
    @feed_items = current_user.feed.paginate(page: params[:page])
  end
end
def custom_journal
    if signed_in?
    @custom = current_user.customs.build 
    @feedc_items = current_user.feedc.paginate(page: params[:page])

  end
end

  def poitrin
    if signed_in?
    @poitrine = current_user.poitrines.build 
    @feedp_items = current_user.feedp.paginate(page: params[:page])

  end
end
def jambes01
    if signed_in?
    @jambe = current_user.jambes.build 
    @feedj_items = current_user.feedj.paginate(page: params[:page])

  end
end

def epaule
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
def jour3
    if signed_in?
    @day3 = current_user.day3s.build 
    @feed3_items = current_user.feed3.paginate(page: params[:page])

  end
end
end
