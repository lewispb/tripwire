module Authentication
  class RegistrationsController < BaseAuthenticationController
    def new
      @registration = Registration.new
    end

    def create
      @registration = Registration.new(registration_params)

      if @registration.save
        redirect_to new_authentication_session_path, notice: "Thanks for signing up"
      else
        respond_to do |format|
          format.html { render :new }
          format.turbo_stream { @model = @registration }
        end
      end
    end

    private
      def registration_params
        params.require(:authentication_registration).permit(:name, :email, :password, :password_confirmation)
      end
  end
end
