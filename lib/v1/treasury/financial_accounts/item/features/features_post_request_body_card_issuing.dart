// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
class FeaturesPostRequestBodyCardIssuing
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The requested property
  bool? requested;

  /// Instantiates a new [FeaturesPostRequestBodyCardIssuing] and sets the default values.
  FeaturesPostRequestBodyCardIssuing() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FeaturesPostRequestBodyCardIssuing createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FeaturesPostRequestBodyCardIssuing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['requested'] = (node) => requested = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('requested', value: requested);
    writer.writeAdditionalData(additionalData);
  }
}
