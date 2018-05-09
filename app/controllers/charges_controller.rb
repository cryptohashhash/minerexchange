class ChargesController < ApplicationController
before_action :find_contract, only: [:new, :create]

  def new
  end
  
  def create
    # Amount in cents
    @amount = @contract.price.to_i 
  
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
  
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
  
  private

  def find_contract
    @contract = Contract.find(params[:contract_id])
  end

end
