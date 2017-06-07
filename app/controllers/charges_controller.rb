class ChargesController < ApplicationController

  before_action :authenticate_client!
  before_action :set_client

  def new
  end

  def create
    @client.stripe_id = params[:stripeToken]
    @client.card_last4 = params[:card_last4]
    @client.card_exp_month = params[:card_exp_month]
    @client.card_exp_year = params[:card_exp_year]
    @client.card_type = params[:card_brand]
    @amount = 500
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
    Stripe::Subscription.create(
      :customer => customer.id,
      :plan => "basic-monthly",
    )
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
end
