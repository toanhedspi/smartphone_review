class User < ActiveRecord::Base
  before_save :downcase_email
    
    
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,  presence: true, length:
    {maximum: 30}
  validates :email, presence: true,
    length: {maximum: 50},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  validates :password, presence: true,
    length: {minimum: 6, maximum: 20}, allow_nil: true
  has_secure_password
  
  private
  def downcase_email
    email.downcase!
  end
end
