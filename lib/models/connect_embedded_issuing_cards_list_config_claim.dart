// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './connect_embedded_issuing_cards_list_features.dart';

/// auto generated
class ConnectEmbeddedIssuingCardsListConfigClaim
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the embedded component is enabled.
  bool? enabled;

  ///  The features property
  ConnectEmbeddedIssuingCardsListFeatures? features;

  /// Instantiates a new [ConnectEmbeddedIssuingCardsListConfigClaim] and sets the default values.
  ConnectEmbeddedIssuingCardsListConfigClaim() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConnectEmbeddedIssuingCardsListConfigClaim
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConnectEmbeddedIssuingCardsListConfigClaim();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['features'] = (node) => features = node.getObjectValue<
            ConnectEmbeddedIssuingCardsListFeatures>(
        ConnectEmbeddedIssuingCardsListFeatures.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<ConnectEmbeddedIssuingCardsListFeatures>(
        'features', features);
    writer.writeAdditionalData(additionalData);
  }
}
