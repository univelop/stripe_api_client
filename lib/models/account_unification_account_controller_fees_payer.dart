// ignore_for_file: type=lint
/// auto generated
///  A value indicating the responsible payer of a bundle of Stripe fees for pricing-control eligible products on this account. Learn more about [fee behavior on connected accounts](https://docs.stripe.com/connect/direct-charges-fee-payer-behavior).
enum AccountUnificationAccountControllerFeesPayer {
  account('account'),
  application('application'),
  applicationCustom('application_custom'),
  applicationExpress('application_express');

  const AccountUnificationAccountControllerFeesPayer(this.value);
  final String value;
}
