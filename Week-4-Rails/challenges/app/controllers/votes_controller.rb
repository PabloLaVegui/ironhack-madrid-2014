class VotesController < ApplicationController

  def create
    @vote = Challenge.find(params[:challenge_id]).votes.new vote_params
    if @vote.save
      flash[:notice] = "Thanks for vote!"
      ChallengeMailer.new_vote(Challenge.find(params[:challenge_id]), @vote).deliver
      redirect_to challenge_path(params[:challenge_id])
    else
      flash[:error] = "Error, We cant add your vote"
      redirect_to challenge_path(params[:challenge_id])
    end
  end



  private

  def vote_params
    params.require(:vote).permit(:email)
  end

end
