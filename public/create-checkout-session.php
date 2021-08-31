<?php
require 'vendor/autoload.php';
\Stripe\Stripe::setApiKey('sk_test_VePHdqKTYQjKNInc7u56JBrQ');
header('Content-Type: application/json');
$YOUR_DOMAIN = 'http://localhost/arrival/public/';
$checkout_session = \Stripe\Checkout\Session::create([
  'line_items' => [[

    'price' => '20',
    'quantity' => 1,
  ]],
  'payment_method_types' => [
    'card',
  ],
  'mode' => 'payment',
  'success_url' => $YOUR_DOMAIN . '/success.html',
  'cancel_url' => $YOUR_DOMAIN . '/cancel.html',
]);
header("HTTP/1.1 303 See Other");
header("Location: " . $checkout_session->url);
?>
