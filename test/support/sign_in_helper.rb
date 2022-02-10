module SignInHelper
  def sign_in_as(user_key)
    user = users(user_key)

    post authentication_session_path, params: { authentication_session: { email: user.email, password: "password" } }
  end
end

class ActionDispatch::IntegrationTest
  include SignInHelper
end
