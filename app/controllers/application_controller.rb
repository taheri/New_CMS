class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def current_comment
  	  Comment.find(session[:comment_id])
  rescue ActiveRecord::RecordNotFound
  	  comment = Comment.create
  	  session[:comment_id] = comment.id

  	  comment

  end
end
