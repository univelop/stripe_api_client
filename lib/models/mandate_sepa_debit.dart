// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class MandateSepaDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The unique reference of the mandate.
  String? reference;

  ///  The URL of the mandate. This URL generally contains sensitive information about the customer and should be shared with them exclusively.
  String? url;

  /// Instantiates a new [MandateSepaDebit] and sets the default values.
  MandateSepaDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MandateSepaDebit createFromDiscriminatorValue(ParseNode parseNode) {
    return MandateSepaDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
