class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    if params[:users] == 'me'
      @mems = current_user.mems.order(:updated_at).reverse
    elsif params[:users] == 'followers'
      @mems = Follower.joins(
        "LEFT OUTER JOIN users ON follower = users.id
         LEFT OUTER JOIN mems ON mems.user_id = users.id").where(
        "follower is NOT NULL AND leader is NOT NULL AND users.id = ?", current_user.id).order(:updated_at).reverse
    elsif params[:users] == 'leaders'
      @mems = Follower.joins(
        "LEFT OUTER JOIN users ON leader = users.id
         LEFT OUTER JOIN mems ON mems.user_id = users.id").where(
        "follower is NOT NULL AND leader is NOT NULL AND users.id = ?", current_user.id).order(:updated_at).reverse
    else
      @mems = Mem.all.reverse
    end
    @dashboard = "set"
  end
end