class ContractsController < ApplicationController
  before_action :find_contract, only: [:show, :edit, :update, :destroy]
  def index
    if params[:category].blank? 
      @contracts = Contract.all.order("created_at DESC")
    else 
      @category_id = Category.find_by(algo: params[:category]).id
      @contracts = Contract.where(category_id: @category_id).order("created_at DESC")
    end
  end 

  def show 
  end 

  def new 
    @contract = current_user.contracts.build
    @categories = Category.all.map {|c| [c.algo, c.id]}
  end 

  def create 
    @contract = current_user.contracts.build(contract_params)
    @contract.category_id = params[:category_id]
    if @contract.save 
      redirect_to root_path 
    else 
      render 'new' 
    end
  end 

  def edit 
    @categories = Category.all.map {|c| [c.algo, c.id]}
  end  

  def update 
    @contract.category_id = params[:category_id]

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
    params.require(:contract).permit(:title, :description, :owner, :price, :category_id)
  end
  
  def find_contract
    @contract = Contract.find(params[:id])
  end

end
