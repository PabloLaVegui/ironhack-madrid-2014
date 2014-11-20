class ChallengesController < ApplicationController

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new challenge_params
    if @challenge.save
      flash.now[:notice] = "Challenge saved!"
    else
      flash.now[:error] = "Error on save!, challenge not saved"
    end
    #TODO: Corrregir redirecc
    render 'new'
  end



  private

  def challenge_params
    params.require(:challenge).permit(:name, :description)
  end

end
