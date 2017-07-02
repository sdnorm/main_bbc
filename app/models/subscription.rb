class Subscription < ApplicationRecord

  belongs_to :clients
  belongs_to :plans
  
end
