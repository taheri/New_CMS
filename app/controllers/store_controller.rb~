class StoreController < ApplicationController
  def index
  	  #@pages = Page.all
  	  @pages=Page.paginate :page => params[:page],:order=>'created_at desc',:per_page => 4
  	  @comment = current_comment
  end
end
