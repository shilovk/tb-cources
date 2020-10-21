class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  validates :email, presence: true

  before_create :set_admin, unless: -> { User.exists? }

  private

  def set_admin
    self.admin = true
  end
end
