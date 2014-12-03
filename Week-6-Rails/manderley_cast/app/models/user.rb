class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments

  enum role: {
               plain: 0,
               admin: 1,
               yoda:  2
             }

  validates :username, uniqueness: true

end
