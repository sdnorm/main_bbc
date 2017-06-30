class Company < ApplicationRecord

  belongs_to :client
  belongs_to :plan

  def add_card_info card_last4, card_exp_month, card_exp_year, card_type
    self.update(
      card_last4: card_last4,
      card_exp_month: card_exp_month,
      card_exp_year: card_exp_year,
      card_type: card_type
    )
    # self.card_last4 = card_last4
    # self.card_exp_month = card_exp_month
    # self.card_exp_year = card_exp_year
    # self.card_type = card_type
  end

  def add_stripe_sub_id stripe_subscription_id
    self.update(stripe_subscription_id: stripe_subscription_id)
  end

end
