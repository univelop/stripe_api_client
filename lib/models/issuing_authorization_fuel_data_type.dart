// ignore_for_file: type=lint
/// auto generated
///  The type of fuel that was purchased.
enum IssuingAuthorizationFuelDataType {
  diesel('diesel'),
  other('other'),
  unleadedPlus('unleaded_plus'),
  unleadedRegular('unleaded_regular'),
  unleadedSuper('unleaded_super');

  const IssuingAuthorizationFuelDataType(this.value);
  final String value;
}
