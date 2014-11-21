class ChallengeMailer < ActionMailer::Base

  default from: "from@example.com"

  def new_vote challenge, vote
    @challenge = challenge
    @vote      = vote

    mail(to: 'lavegui@hotmail.com',
         from: 'myapp@example.com',
         subject: "New vote in challenge #{@challenge.name}")
  end

end
