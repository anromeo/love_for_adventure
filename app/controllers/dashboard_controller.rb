class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @dashboard = "set"
    if params[:users] == 'me'
      @mems = current_user.mems.order(:updated_at).reverse
    elsif params[:users] == 'followers'
      @mems = Mem.joins(
        "LEFT OUTER JOIN followers ON mems.user_id = leader
         LEFT OUTER JOIN users ON follower = users.id").where(
        "leader = ?", current_user.id).order(:updated_at).reverse
    elsif params[:users] == 'leaders'
      @mems = Mem.joins(
        "LEFT OUTER JOIN followers ON mems.user_id = follower
         LEFT OUTER JOIN users ON leader = users.id").where(
        "follower = ?", current_user.id).order(:updated_at).reverse
    else
      @mems = Mem.all.reverse
    end
  end

  def follow
    leader = params[:leader]
    current_follower = Follower.where("follower = ? AND leader = ?", current_user.id, leader)
    @follower = Follower.new(follower: current_user.id, leader: leader)
    @leader = User.find_by_id(leader).username
    respond_to do |format|
      if current_follower.blank?
        if @follower.save
          @@message = "You are now following " + @leader
        else
          @@message = "There was a problem. Please, try again later."
        end
      else current_follower.present?
        current_follower.destroy_all
        @@message = "You are no longer following " + @leader
      end
      flash[:message] = @@message
      format.html{redirect_to following_path}
      format.js
    end
  end

  def following
    render layout: false
  end
end