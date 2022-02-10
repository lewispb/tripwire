class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, email: { mode: :strict, require_fqdn: true }
end
