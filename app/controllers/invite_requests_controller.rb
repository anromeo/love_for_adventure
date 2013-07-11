class InviteRequestsController < ApplicationController
  layout "join"

  def sent
  end

  def new
    @invite_request = InviteRequest.new
  end

  def create
    @invite_request = InviteRequest.new(params[:invite_request])
    email = params[:invite_request][:email]
    @invite_request['email'] = email.downcase
    respond_to do |format|
      if @invite_request.save
        format.html{
          redirect_to "/sent"
        }
        format.js
      else
        @message = if params[:invite_request][:email].blank?
                      "Enter an email address below."
                    else
                      "That email is already in our system. We'll send you an invite as soon as we can."
                    end
        format.html{
          redirect_to root_path, notice: @message
        }
        format.js
        end
      end
  end
end
