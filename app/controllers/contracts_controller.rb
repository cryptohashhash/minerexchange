class ContractsController < ApplicationController

  def index
  end 

  def new 
    @contract = Contract.new 
  end 


  def create 
    @contract = Contract.new(contract_params)
  end 


  private 

  def contract_params 
    params.require(:contract).permit(:title, :description, :owner, :price)
  end


end
