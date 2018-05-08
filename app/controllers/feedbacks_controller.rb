class FeedbacksController < ApplicationController
  before_action :find_contract 
  before_action :find_feedback, only: [:edit, :update, :destroy]

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

def edit 
  
end 

def update 
  
  if @feedback.update(feedback_params)
    redirect_to contract_path(@contract)
  else 
    render 'edit'
  end 
end 

def destroy 

  @feedback.destroy 
  redirect_to contract_path(@contract)
end  


private 

def find_contract
  @contract = Contract.find(params[:contract_id])
end 

def feedback_params 
 params.require(:feedback).permit(:rating, :comment)
end 

def find_feedback 
  @feedback = Feedback.find(params[:id])
end 


end
