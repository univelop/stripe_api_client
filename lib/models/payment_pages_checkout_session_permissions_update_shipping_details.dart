// ignore_for_file: type=lint
/// auto generated
///  Determines which entity is allowed to update the shipping details.Default is `client_only`. Stripe Checkout client will automatically update the shipping details. If set to `server_only`, only your server is allowed to update the shipping details.When set to `server_only`, you must add the onShippingDetailsChange event handler when initializing the Stripe Checkout client and manually update the shipping details from your server using the Stripe API.
enum PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails {
  clientOnly('client_only'),
  serverOnly('server_only');

  const PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails(this.value);
  final String value;
}
