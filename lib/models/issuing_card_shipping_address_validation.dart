// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';
import './issuing_card_shipping_address_validation_mode.dart';
import './issuing_card_shipping_address_validation_result.dart';

/// auto generated
class IssuingCardShippingAddressValidation
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address validation capabilities to use.
  IssuingCardShippingAddressValidationMode? mode;

  ///  The normalized shipping address.
  Address? normalizedAddress;

  ///  The validation result for the shipping address.
  IssuingCardShippingAddressValidationResult? result;

  /// Instantiates a new [IssuingCardShippingAddressValidation] and sets the default values.
  IssuingCardShippingAddressValidation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardShippingAddressValidation createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardShippingAddressValidation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['mode'] = (node) => mode =
        node.getEnumValue<IssuingCardShippingAddressValidationMode>(
            (stringValue) => IssuingCardShippingAddressValidationMode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['normalized_address'] = (node) => normalizedAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['result'] = (node) => result =
        node.getEnumValue<IssuingCardShippingAddressValidationResult>(
            (stringValue) => IssuingCardShippingAddressValidationResult.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<IssuingCardShippingAddressValidationMode>(
        'mode', mode, (e) => e?.value);
    writer.writeObjectValue<Address>('normalized_address', normalizedAddress);
    writer.writeEnumValue<IssuingCardShippingAddressValidationResult>(
        'result', result, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
