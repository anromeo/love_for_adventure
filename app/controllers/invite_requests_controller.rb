class InviteRequestsController < ApplicationController
  layout false

  def index
  end
  def sent
  end

  def new
    @invite_request = InviteRequest.new
  end

  def create
    @invite_request = InviteRequest.new(params[:invite_request])
    respond_to do |format|
      if @invite_request.save
        format.html{
          redirect_to "/sent"
        }
        format.js
      else
        flash[:notice] = "Please enter an email"
        format.html{
          redirect_to root_path
        }
        format.js
        end
      end
  end
end
