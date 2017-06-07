// var paymentForm = $('#payment-form');
// var handler = StripeCheckout.configure({
//   key: 'pk_test_Mz55NUk1Hbcdtv8xPH7edhvJ',
//   image: 'http://heytaco-blog.s3.amazonaws.com/2016/09/golden-taco.jpg',
//   locale: 'auto',
//   token: function(token) {
//     // You can access the token ID with `token.id`.
//     // Get the token ID to your server-side code for use.
//     // console.log(token)
//     paymentForm.append($('<input type="hidden" name="stripeToken" />').val(token));
//     paymentForm.append($('<input type="hidden" name="card_last4" />').val(token.card.last4));
//     paymentForm.append($('<input type="hidden" name="card_exp_month" />').val(token.card.exp_month));
//     paymentForm.append($('<input type="hidden" name="card_exp_year" />').val(token.card.exp_year));
//     paymentForm.append($('<input type="hidden" name="card_brand" />').val(token.card.brand));
//     paymentForm.get(0).submit();
//   }
// });
