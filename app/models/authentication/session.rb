class Authentication::Session
  include ActiveModel::Model

  attr_accessor :email, :password

  validates :email, presence: true, email: true
  validates :password, presence: true

  def authenticate
    return unless valid?

    user&.authenticate(password).tap do |authenticated|
      errors.add(:base, "Invalid email address or password") unless authenticated
    end
  end

  private
    def user
      User.find_by(email: email)
    end
end
