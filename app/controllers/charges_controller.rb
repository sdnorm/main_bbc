class ChargesController < ApplicationController

  before_action :authenticate_client!
  before_action :set_client
  before_action :set_company

  def new
  end

  def create
    @client.stripe_id = params[:stripeToken]
    @company.add_card_info(
      params[:card_last4],
      params[:card_exp_month],
      params[:card_exp_year],
      params[:card_brand]
    )
    @company.add_stripe_sub_id(params[:stripe_subscription_id])
    @amount = 500
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
    subscription = Stripe::Subscription.create(
      :customer => customer.id,
      :plan => @company.plan.stripe_id#{}"basic-monthly"#params[:plan]#"basic-annually",
    )
    # puts "-------------------------------"
    # puts customer
    # puts "-------------------------------"
    # puts subscription
    # puts "-------------------------------"
    flash[:notice] = "Thanks for your payment/subsription!"
    redirect_to client_portal_url
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to client_portal_path
  end

  private

  def set_client
    @client = current_client
  end

  def set_company
    @company = Company.find(params[:id])
  end
end
