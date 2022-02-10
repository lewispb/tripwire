class Authentication::SessionsController < ApplicationController
  def new
    @session = Authentication::Session.new
  end

  def create
    @session = Authentication::Session.new(session_params)

    if @session.authenticate
      cookies.signed[:user_id] = @session.user_id

      redirect_to root_url, notice: "You have been signed in"
    else
      respond_to do |format|
        format.html { render :new }
        format.turbo_stream { render }
      end
    end
  end

  private
    def session_params
      params.require(:authentication_session).permit(:email, :password)
    end
end
