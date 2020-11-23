class UserChallengeStepsController < ApplicationController  
  def update
    user_challenge_step = UserChallengeStep.find(params[:id])
    user_challenge_step.update(status: "completed")
    redirect_to challenge_path(user_challenge_step.user_challenge.challenge)
  end 

end 
