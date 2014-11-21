class ChallengesController < ApplicationController
  # TODO: .gitignore (bd, gemas)

  before_filter :load_challenge, only: [:show, :update, :edit, :destroy]

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new challenge_params
    if @challenge.save
      flash.now[:notice] = "Challenge saved!"
      redirect_to challenges_path
    else
      flash.now[:error] = "Error on save!, challenge not saved"
      render 'new'
    end
  end

  def index
    # TODO: método de clase en el modelo
    @challenges = Challenge.where("name ilike ?", 
                                str_to_search(params[:q])).order(created_at: :desc)
  end

  def show
    @vote      = @challenge.votes.new
    @num_votes = Vote.num_of_votes(params[:id])
  end

  def edit
  end

  def update
    if @challenge.update_attributes challenge_params
      flash.now[:notice] = "Challenge updated!"
    else
      flash.now[:error] = "Error on update!, challenge not saved"
    end
    redirect_to '/challenges'
  end

  def destroy
    @challenge.destroy
    redirect_to '/challenges', notice: 'Challenge deleted correct'
  end



  private

  def load_challenge
    @challenge = Challenge.find params[:id]
  end

  def challenge_params
    params.require(:challenge).permit(:name, :description)
  end

  def str_to_search str
    search = params[:q] || ""
    "%#{search}%"
  end

end
