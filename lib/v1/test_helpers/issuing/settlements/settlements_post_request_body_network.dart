// ignore_for_file: type=lint
/// auto generated
///  The card network for this settlement. One of ["visa", "maestro"]
enum SettlementsPostRequestBodyNetwork {
  maestro('maestro'),
  visa('visa');

  const SettlementsPostRequestBodyNetwork(this.value);
  final String value;
}
