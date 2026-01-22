// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_card_post_request_body_shipping_address.dart';
import './with_card_post_request_body_shipping_address_validation.dart';
import './with_card_post_request_body_shipping_customs.dart';
import './with_card_post_request_body_shipping_service.dart';
import './with_card_post_request_body_shipping_type.dart';

/// auto generated
/// Updated shipping information for the card.
class WithCardPostRequestBodyShipping
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  WithCardPostRequestBodyShippingAddress? address;

  ///  The address_validation property
  WithCardPostRequestBodyShippingAddressValidation? addressValidation;

  ///  The customs property
  WithCardPostRequestBodyShippingCustoms? customs;

  ///  The name property
  String? name;

  ///  The phone_number property
  String? phoneNumber;

  ///  The require_signature property
  bool? requireSignature;

  ///  The service property
  WithCardPostRequestBodyShippingService? service;

  ///  The type property
  WithCardPostRequestBodyShippingType? type_;

  /// Instantiates a new [WithCardPostRequestBodyShipping] and sets the default values.
  WithCardPostRequestBodyShipping() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCardPostRequestBodyShipping createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithCardPostRequestBodyShipping();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            WithCardPostRequestBodyShippingAddress>(
        WithCardPostRequestBodyShippingAddress.createFromDiscriminatorValue);
    deserializerMap['address_validation'] = (node) => addressValidation =
        node.getObjectValue<WithCardPostRequestBodyShippingAddressValidation>(
            WithCardPostRequestBodyShippingAddressValidation
                .createFromDiscriminatorValue);
    deserializerMap['customs'] = (node) => customs = node.getObjectValue<
            WithCardPostRequestBodyShippingCustoms>(
        WithCardPostRequestBodyShippingCustoms.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone_number'] =
        (node) => phoneNumber = node.getStringValue();
    deserializerMap['require_signature'] =
        (node) => requireSignature = node.getBoolValue();
    deserializerMap['service'] = (node) => service =
        node.getEnumValue<WithCardPostRequestBodyShippingService>(
            (stringValue) => WithCardPostRequestBodyShippingService.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<WithCardPostRequestBodyShippingType>((stringValue) =>
            WithCardPostRequestBodyShippingType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithCardPostRequestBodyShippingAddress>(
        'address', address);
    writer.writeObjectValue<WithCardPostRequestBodyShippingAddressValidation>(
        'address_validation', addressValidation);
    writer.writeObjectValue<WithCardPostRequestBodyShippingCustoms>(
        'customs', customs);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone_number', phoneNumber);
    writer.writeBoolValue('require_signature', value: requireSignature);
    writer.writeEnumValue<WithCardPostRequestBodyShippingService>(
        'service', service, (e) => e?.value);
    writer.writeEnumValue<WithCardPostRequestBodyShippingType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
