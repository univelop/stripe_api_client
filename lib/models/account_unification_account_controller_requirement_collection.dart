// ignore_for_file: type=lint
/// auto generated
///  A value indicating responsibility for collecting requirements on this account. Only returned when the Connect application retrieving the resource controls the account.
enum AccountUnificationAccountControllerRequirementCollection {
  application('application'),
  stripe('stripe');

  const AccountUnificationAccountControllerRequirementCollection(this.value);
  final String value;
}
