// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_card_post_request_body_shipping_address_validation_mode.dart';

/// auto generated
class WithCardPostRequestBodyShippingAddressValidation
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mode property
  WithCardPostRequestBodyShippingAddressValidationMode? mode;

  /// Instantiates a new [WithCardPostRequestBodyShippingAddressValidation] and sets the default values.
  WithCardPostRequestBodyShippingAddressValidation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCardPostRequestBodyShippingAddressValidation
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithCardPostRequestBodyShippingAddressValidation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['mode'] = (node) => mode =
        node.getEnumValue<WithCardPostRequestBodyShippingAddressValidationMode>(
            (stringValue) =>
                WithCardPostRequestBodyShippingAddressValidationMode.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<WithCardPostRequestBodyShippingAddressValidationMode>(
        'mode', mode, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
