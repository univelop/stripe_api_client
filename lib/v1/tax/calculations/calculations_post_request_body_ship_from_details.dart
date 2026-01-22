// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './calculations_post_request_body_ship_from_details_address.dart';

/// auto generated
/// Details about the address from which the goods are being shipped.
class CalculationsPostRequestBodyShipFromDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  CalculationsPostRequestBodyShipFromDetailsAddress? address;

  /// Instantiates a new [CalculationsPostRequestBodyShipFromDetails] and sets the default values.
  CalculationsPostRequestBodyShipFromDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CalculationsPostRequestBodyShipFromDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CalculationsPostRequestBodyShipFromDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<CalculationsPostRequestBodyShipFromDetailsAddress>(
            CalculationsPostRequestBodyShipFromDetailsAddress
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CalculationsPostRequestBodyShipFromDetailsAddress>(
        'address', address);
    writer.writeAdditionalData(additionalData);
  }
}
