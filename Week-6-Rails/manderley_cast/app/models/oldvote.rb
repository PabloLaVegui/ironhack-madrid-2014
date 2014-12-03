class Oldvote < ActiveRecord::Base
  belongs_to :person
  belongs_to :user

  scope :old,    ->() { where points: 1 }
  scope :notOld, ->() { where points: 1 }
  scope :user,  ->(user) { where user: user }
  scope :person, ->(person) { where person: person }

  def old
    self.points = 1
  end

  def old!
    old
    save
  end

  def notOld
    self.points = -1
  end

  def notOld!
    notOld
    save
  end
end
