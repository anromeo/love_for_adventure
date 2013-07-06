class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    if params[:users] == 'me'
      @mems = current_user.mems.reverse
    elsif params[:users] == 'followers'
      @mems = Follower.joins("LEFT OUTER JOIN users ON follower = users.id").where("follower is NOT NULL AND leader is NOT NULL AND users.id = ?", current_user.id)
    elsif params[:users] == 'leaders'
      @mems = Follower.joins("LEFT OUTER JOIN users ON leader = users.id").where("follower is NOT NULL AND leader is NOT NULL AND users.id = ?", current_user.id)
    else
      @mems = Mem.all.reverse
    end
    @dashboard = "set"
  end
end