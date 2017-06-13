Plan.create([
  {name: "RMR Home Services Custom Plan", price: 480.00, stripe_id: "rmr-home-br", billing_frequency: "annually"},
  # {name: "Fitness One Time", price: 480.00, stripe_id: "fitness-one-time", billing_frequency: "once"},
  # {name: "Basic Annually", price: 540.00, stripe_id: "basic-annually", billing_frequency: "annual"},
  {name: "Basic Monthly", price: 50.00, stripe_id: "basic-monthly", billing_frequency: "monthly"}
])

Client.create(email: "rmrhomeservices@gmail.com", password: "123456789")
