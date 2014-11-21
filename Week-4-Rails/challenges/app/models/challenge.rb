class Challenge < ActiveRecord::Base

  has_many :votes, dependent: :destroy

  validates :name,        presence: true

  before_save :set_description_to_default_value



  private

  def set_description_to_default_value
    self.description = "Default value"
  end

end
