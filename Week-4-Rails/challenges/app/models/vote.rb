class Vote < ActiveRecord::Base

  belongs_to :challenge

  validates :email, format: { with: EmailAddressValidator::Regexp::ADDR_SPEC}

  def self.num_of_votes challenge_id
    Vote.where(challenge_id: challenge_id).count
  end

end
