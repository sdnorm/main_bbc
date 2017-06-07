// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(document).foundation();

// Select all links with hashes
$('a[href*="#"]')
  // Remove links that don't actually link to anything
  .not('[href="#"]')
  .not('[href="#0"]')
  .click(function(event) {
    // On-page links
    if (
      location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
      &&
      location.hostname == this.hostname
    ) {
      // Figure out element to scroll to
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      // Does a scroll target exist?
      if (target.length) {
        // Only prevent default if animation is actually gonna happen
        event.preventDefault();
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000, function() {
          // Callback after animation
          // Must change focus!
          var $target = $(target);
          $target.focus();
          if ($target.is(":focus")) { // Checking if the target was focused
            return false;
          } else {
            $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
            $target.focus(); // Set focus again
          };
        });
      }
    }
  });

  // Create a Stripe client
// var stripe = Stripe('pk_test_Mz55NUk1Hbcdtv8xPH7edhvJ');

// Create an instance of Elements
// var elements = stripe.elements();

// Custom styling can be passed to options when creating an Element.
// (Note that this demo uses a wider set of styles than the guide below.)
// var style = {
//   base: {
//     color: '#32325d',
//     lineHeight: '24px',
//     fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
//     fontSmoothing: 'antialiased',
//     fontSize: '16px',
//     '::placeholder': {
//       color: '#aab7c4'
//     }
//   },
//   invalid: {
//     color: '#fa755a',
//     iconColor: '#fa755a'
//   }
// };
//
// // Create an instance of the card Element
// // var card = elements.create('card', {style: style});
//
// // Add an instance of the card Element into the `card-element` <div>
// // card.mount('#card-element');
//
// // Handle real-time validation errors from the card Element.
// card.addEventListener('change', function(event) {
//   var displayError = document.getElementById('card-errors');
//   if (event.error) {
//     displayError.textContent = event.error.message;
//   } else {
//     displayError.textContent = '';
//   }
// });
//
// // Handle form submission
// var form = document.getElementById('payment-form');
// form.addEventListener('submit', function(event) {
//   event.preventDefault();
//
//   stripe.createToken(card).then(function(result) {
//     if (result.error) {
//       // Inform the user if there was an error
//       var errorElement = document.getElementById('card-errors');
//       errorElement.textContent = result.error.message;
//     } else {
//       // Send the token to your server
//       stripeTokenHandler(result.token);
//     }
//   });
// });
