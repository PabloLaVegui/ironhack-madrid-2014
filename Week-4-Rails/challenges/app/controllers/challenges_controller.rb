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

  def index
    @challenges = Challenge.order(created_at: :desc)
  end

  def show
    @challenge = Challenge.find params[:id]
  end

  def edit
    @challenge = Project.find params[:id]
  end

  def update
    if @challenge.save
      flash.now[:notice] = "Challenge updated!"
    else
      flash.now[:error] = "Error on update!, challenge not saved"
    end
    #TODO: Corrregir redirecc
  end



  private

  def challenge_params
    params.require(:challenge).permit(:name, :description)
  end

end
