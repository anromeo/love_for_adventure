class HomeController < ApplicationController
  layout "join"

  def index
    @photos = Photo.all
    @invite_request = InviteRequest.new
    @disable_signin_link = true
    @disable_signup_link = true
    if current_user
      redirect_to mems_path
    end
    render layout: false
  end

  def signup
    @disable_signup_link = true
  end
end