class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :prepare_for_mobile

  def after_sign_in_path_for(users)
    sign_in_url = url_for(:action => 'new',
                          :controller => 'sessions',
                          :protocol => '/')
    if request.referer == sign_in_url
      super
    else
      root_path
    end
  end

  private

  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?

  def prepare_for_mobile
    session[:mobile_param] = params[:mobile] if params[:mobile]
    request.format = :mobile if mobile_device?
  end
end
