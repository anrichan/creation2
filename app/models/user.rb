class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :confirmable
  
  has_many :profiles, dependent: :destroy
  # usernameが空だとだめ
  validates :username, presence: true


  def password_required?
    super if confirmed?
  end
end

