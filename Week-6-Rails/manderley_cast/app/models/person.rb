class Person < ActiveRecord::Base
  has_many :casts
  has_many :movies, through: :casts

  has_many :oldvotes
  has_many :old,
             ->() { old },
             class_name: 'Oldvote'
  has_many :notOld,
             ->() { notOld },
             class_name: 'Oldvote'


  validates_presence_of :first_name, :last_name

  def complete_name
    "#{self.first_name} #{self.last_name}"
  end
end
