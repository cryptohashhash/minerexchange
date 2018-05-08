class FeedbacksController < ApplicationController
  before_action :find_contract 

def new 

@feedback = Feedback.new 

end 

def create 
  
  @feedback = Feedback.new(feedback_params)
  @feedback.contract_id = @contract.id
  @feedback.user_id = current_user.id 

  if @feedback.save 
    redirect_to contract_path(@contract)
  else 
    render 'new'
  end
  

end 


private 

def find_contract
  @contract = Contract.find(params[:id])
end 

def feedback_params 
 params.require(:feedback).permit(:rating, :comment)
end 


end
