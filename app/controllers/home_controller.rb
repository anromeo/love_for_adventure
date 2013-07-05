class HomeController < ActionController::Base

  def index
    @disable_signin_link = true
    @disable_signup_link = true
    if current_user
      redirect_to mems_path
    end
  end
end