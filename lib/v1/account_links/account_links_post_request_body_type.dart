// ignore_for_file: type=lint
/// auto generated
///  The type of account link the user is requesting.You can create Account Links of type `account_update` only for connected accounts where your platform is responsible for collecting requirements, including Custom accounts. You can't create them for accounts that have access to a Stripe-hosted Dashboard. If you use [Connect embedded components](/connect/get-started-connect-embedded-components), you can include components that allow your connected accounts to update their own information. For an account without Stripe-hosted Dashboard access where Stripe is liable for negative balances, you must use embedded components.
enum AccountLinksPostRequestBodyType {
  accountOnboarding('account_onboarding'),
  accountUpdate('account_update');

  const AccountLinksPostRequestBodyType(this.value);
  final String value;
}
