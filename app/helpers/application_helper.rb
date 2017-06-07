module ApplicationHelper
  def card_fields_class
    "hidden" if current_client.card_last4?
  end
end
