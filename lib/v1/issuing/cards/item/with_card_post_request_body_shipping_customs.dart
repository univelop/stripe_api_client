// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithCardPostRequestBodyShippingCustoms
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The eori_number property
  String? eoriNumber;

  /// Instantiates a new [WithCardPostRequestBodyShippingCustoms] and sets the default values.
  WithCardPostRequestBodyShippingCustoms() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCardPostRequestBodyShippingCustoms createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithCardPostRequestBodyShippingCustoms();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['eori_number'] =
        (node) => eoriNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('eori_number', eoriNumber);
    writer.writeAdditionalData(additionalData);
  }
}
