// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './us_bank_account_networks_supported.dart';

/// auto generated
class UsBankAccountNetworks implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preferred network.
  String? preferred;

  ///  All supported networks.
  Iterable<UsBankAccountNetworksSupported>? supported;

  /// Instantiates a new [UsBankAccountNetworks] and sets the default values.
  UsBankAccountNetworks() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static UsBankAccountNetworks createFromDiscriminatorValue(
      ParseNode parseNode) {
    return UsBankAccountNetworks();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['preferred'] = (node) => preferred = node.getStringValue();
    deserializerMap['supported'] = (node) => supported =
        node.getCollectionOfEnumValues<UsBankAccountNetworksSupported>(
            (stringValue) => UsBankAccountNetworksSupported.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('preferred', preferred);
    writer.writeCollectionOfEnumValues<UsBankAccountNetworksSupported>(
        'supported', supported, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
