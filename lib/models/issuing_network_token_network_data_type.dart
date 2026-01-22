// ignore_for_file: type=lint
/// auto generated
///  The network that the token is associated with. An additional hash is included with a name matching this value, containing tokenization data specific to the card network.
enum IssuingNetworkTokenNetworkDataType {
  mastercard('mastercard'),
  visa('visa');

  const IssuingNetworkTokenNetworkDataType(this.value);
  final String value;
}
