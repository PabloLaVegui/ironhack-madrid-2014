class Challenge < ActiveRecord::Base

  has_many :votes

  validates :name,        presence: true
  validates :description, presence: true

end
