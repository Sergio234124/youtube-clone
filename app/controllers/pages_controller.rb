class PagesController < ApplicationController
  def media
    if user_signed_in?
      @tutorials = current_user.tutorials
      @q = Tutorial.ransack(params[:q])
      @tutorials = @q.result.order("created_at DESC").paginate(:page => params[:page], :per_page => 30)
    else
      redirect_to new_user_session_path
    end
  end
end
