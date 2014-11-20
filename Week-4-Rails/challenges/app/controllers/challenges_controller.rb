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
    render 'new'
  end

  def index
    @challenges = Challenge.order(created_at: :desc)
  end

  def show
    @challenge = Challenge.find params[:id]
  end

  def edit
    @challenge = Challenge.find params[:id]
  end

  def update
    @challenge = Challenge.find params[:id]
    if @challenge.update_attributes challenge_params
      flash.now[:notice] = "Challenge updated!"
    else
      flash.now[:error] = "Error on update!, challenge not saved"
    end
    redirect_to '/challenges'
  end

  def destroy
    Challenge.find(params[:id]).destroy
    redirect_to '/challenges'
  end



  private

  def challenge_params
    params.require(:challenge).permit(:name, :description)
  end

end
