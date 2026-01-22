// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourcesPostRequestBodyOwnerAddress
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The city property
  String? city;

  ///  The country property
  String? country;

  ///  The line1 property
  String? line1;

  ///  The line2 property
  String? line2;

  ///  The postal_code property
  String? postalCode;

  ///  The state property
  String? state;

  /// Instantiates a new [SourcesPostRequestBodyOwnerAddress] and sets the default values.
  SourcesPostRequestBodyOwnerAddress() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourcesPostRequestBodyOwnerAddress createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourcesPostRequestBodyOwnerAddress();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['city'] = (node) => city = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['line1'] = (node) => line1 = node.getStringValue();
    deserializerMap['line2'] = (node) => line2 = node.getStringValue();
    deserializerMap['postal_code'] =
        (node) => postalCode = node.getStringValue();
    deserializerMap['state'] = (node) => state = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('city', city);
    writer.writeStringValue('country', country);
    writer.writeStringValue('line1', line1);
    writer.writeStringValue('line2', line2);
    writer.writeStringValue('postal_code', postalCode);
    writer.writeStringValue('state', state);
    writer.writeAdditionalData(additionalData);
  }
}
