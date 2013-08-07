class FriendsController < ApplicationController
  before_filter :find_friend, only: [:edit, :update, :destroy]


  def index
    @friends = Friend.where("friend_id = #{current_user.id} OR request_id = #{current_user.id} AND approval = 1")
    @pending_friends = Friend.where("friend_id = #{current_user.id} OR request_id = #{current_user.id} AND approval = 0")
    @denied_friends = Friend.where("friend_id = #{current_user.id} OR request_id = #{current_user.id} AND approval = -1")
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(params[:friend])
    respond_to do |format|
      if @friend.save
        format.html{}
        format.js
      else
        format.html{}
        format.js
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_friend
    @friend = Friend.find(params[:id])
  end
end
