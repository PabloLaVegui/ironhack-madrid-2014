class Movie < ActiveRecord::Base

    has_many :comments
    has_many :casts
    has_many :people, through: :casts

    has_many :votes


    def likes
      votes.likes      # likes es el scope
    end

    def dislikes
      votes.dislikes
    end

    validates_presence_of :title
    validates_uniqueness_of :title

end
