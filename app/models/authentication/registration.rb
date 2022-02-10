class Authentication::Registration
  include ActiveModel::Model

  attr_accessor :name, :email, :password, :password_confirmation

  def save
    @user = User.new(
      name: name,
      email: email,
      password: password,
      password_confirmation: password_confirmation
    )
    @user.save
  end

  def errors
    @user&.errors || {}
  end
end
