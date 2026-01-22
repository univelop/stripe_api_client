// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cards_post_request_body_shipping_address_validation_mode.dart';

/// auto generated
class CardsPostRequestBodyShippingAddressValidation
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mode property
  CardsPostRequestBodyShippingAddressValidationMode? mode;

  /// Instantiates a new [CardsPostRequestBodyShippingAddressValidation] and sets the default values.
  CardsPostRequestBodyShippingAddressValidation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardsPostRequestBodyShippingAddressValidation
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CardsPostRequestBodyShippingAddressValidation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['mode'] = (node) => mode =
        node.getEnumValue<CardsPostRequestBodyShippingAddressValidationMode>(
            (stringValue) => CardsPostRequestBodyShippingAddressValidationMode
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<CardsPostRequestBodyShippingAddressValidationMode>(
        'mode', mode, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
