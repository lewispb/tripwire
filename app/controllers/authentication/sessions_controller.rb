module Authentication
  class SessionsController < BaseAuthenticationController
    def new
      @session = Session.new
    end

    def create
      @session = Session.new(session_params)

      if @session.authenticate
        cookies.encrypted[:user_id] = @session.user_id

        redirect_to root_url, notice: "You have been signed in"
      else
        respond_to do |format|
          format.html { render :new }
          format.turbo_stream { @model = @session }
        end
      end
    end

    private
      def session_params
        params.require(:authentication_session).permit(:email, :password)
      end
  end
end
