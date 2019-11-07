class User < ApplicationRecord
  has_many :cryptos
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #this method converts the user email in lowercase before hittig the database
  before_save { self.email = email.downcase }
  
  # vlaidates database email, checks for unique email, checks case sensitive email and max require.  
  # REGEX- validates email address via regular expressions.
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
            length: { maximum: 50 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
end
