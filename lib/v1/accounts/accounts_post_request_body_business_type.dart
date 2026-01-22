// ignore_for_file: type=lint
/// auto generated
///  The business type. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
enum AccountsPostRequestBodyBusinessType {
  company('company'),
  governmentEntity('government_entity'),
  individual('individual'),
  nonProfit('non_profit');

  const AccountsPostRequestBodyBusinessType(this.value);
  final String value;
}
