class ContractsController < ApplicationController
  before_action :find_contract, only: [:show, :edit, :update, :destroy]
  def index
    @contracts = Contract.all.order("created_at DESC")
  end 

  def show 
   
  end 

  def new 
    @contract = Contract.new 
  end 


  def create 
    @contract = Contract.new(contract_params)

    if @contract.save 
      redirect_to root_path 
    else 
      render 'new' 
    end
    
  end 


  private 

  def contract_params 
    params.require(:contract).permit(:title, :description, :owner, :price)
  end
  
  def find_contract
    @contract = Contract.find(params[:id])
  end

end
