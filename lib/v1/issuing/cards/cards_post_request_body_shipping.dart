// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cards_post_request_body_shipping_address.dart';
import './cards_post_request_body_shipping_address_validation.dart';
import './cards_post_request_body_shipping_customs.dart';
import './cards_post_request_body_shipping_service.dart';
import './cards_post_request_body_shipping_type.dart';

/// auto generated
/// The address where the card will be shipped.
class CardsPostRequestBodyShipping implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  CardsPostRequestBodyShippingAddress? address;

  ///  The address_validation property
  CardsPostRequestBodyShippingAddressValidation? addressValidation;

  ///  The customs property
  CardsPostRequestBodyShippingCustoms? customs;

  ///  The name property
  String? name;

  ///  The phone_number property
  String? phoneNumber;

  ///  The require_signature property
  bool? requireSignature;

  ///  The service property
  CardsPostRequestBodyShippingService? service;

  ///  The type property
  CardsPostRequestBodyShippingType? type_;

  /// Instantiates a new [CardsPostRequestBodyShipping] and sets the default values.
  CardsPostRequestBodyShipping() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardsPostRequestBodyShipping createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CardsPostRequestBodyShipping();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<CardsPostRequestBodyShippingAddress>(
            CardsPostRequestBodyShippingAddress.createFromDiscriminatorValue);
    deserializerMap['address_validation'] = (node) => addressValidation =
        node.getObjectValue<CardsPostRequestBodyShippingAddressValidation>(
            CardsPostRequestBodyShippingAddressValidation
                .createFromDiscriminatorValue);
    deserializerMap['customs'] = (node) => customs =
        node.getObjectValue<CardsPostRequestBodyShippingCustoms>(
            CardsPostRequestBodyShippingCustoms.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone_number'] =
        (node) => phoneNumber = node.getStringValue();
    deserializerMap['require_signature'] =
        (node) => requireSignature = node.getBoolValue();
    deserializerMap['service'] = (node) => service =
        node.getEnumValue<CardsPostRequestBodyShippingService>((stringValue) =>
            CardsPostRequestBodyShippingService.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CardsPostRequestBodyShippingType>((stringValue) =>
            CardsPostRequestBodyShippingType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CardsPostRequestBodyShippingAddress>(
        'address', address);
    writer.writeObjectValue<CardsPostRequestBodyShippingAddressValidation>(
        'address_validation', addressValidation);
    writer.writeObjectValue<CardsPostRequestBodyShippingCustoms>(
        'customs', customs);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone_number', phoneNumber);
    writer.writeBoolValue('require_signature', value: requireSignature);
    writer.writeEnumValue<CardsPostRequestBodyShippingService>(
        'service', service, (e) => e?.value);
    writer.writeEnumValue<CardsPostRequestBodyShippingType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
