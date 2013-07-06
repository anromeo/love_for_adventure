class HomeController < ApplicationController
  layout false

  def index
    @invite_request = InviteRequest.new
    @disable_signin_link = true
    @disable_signup_link = true
    if current_user
      redirect_to mems_path
    end
  end
end