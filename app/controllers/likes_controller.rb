class LikesController < ApplicationController
  before_action :require_user_logged_in
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:succes] = ' Micropost をお気に入り登録しました。'
    redirect_to users_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:succes] = ' Micropost のお気に入りを解除しました。'
    redirect_to users_url
  end
end
