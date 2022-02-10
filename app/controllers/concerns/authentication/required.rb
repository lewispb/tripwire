module Authentication::Required
  extend ActiveSupport::Concern

  included do
    before_action :authenticate
  end

  private
    def authenticate
      if authenticated_user = User.find_by(id: cookies.encrypted[:user_id])
        Current.user = authenticated_user
      else
        redirect_to new_authentication_session_path, notice: "Sign in requried to continue"
      end
    end
end
