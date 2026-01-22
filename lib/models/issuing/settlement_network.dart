// ignore_for_file: type=lint
/// auto generated
///  The card network for this settlement report. One of ["visa", "maestro"]
enum SettlementNetwork {
  maestro('maestro'),
  visa('visa');

  const SettlementNetwork(this.value);
  final String value;
}
