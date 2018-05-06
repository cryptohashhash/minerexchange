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

  def edit 

  end  

  def update 
    if @contract.update(contract_params) 
      redirect_to contract_path(@contract)
    else 
      render 'edit'
    end 
  end 

  def destroy 
    @contract.destroy 
    redirect_to root_path 
  end 




  private 

  def contract_params 
    params.require(:contract).permit(:title, :description, :owner, :price)
  end
  
  def find_contract
    @contract = Contract.find(params[:id])
  end

end
