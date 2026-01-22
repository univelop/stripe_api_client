// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';
import './issuing_card_shipping_address_validation.dart';
import './issuing_card_shipping_carrier.dart';
import './issuing_card_shipping_customs.dart';
import './issuing_card_shipping_service.dart';
import './issuing_card_shipping_status.dart';
import './issuing_card_shipping_type.dart';

/// auto generated
class IssuingCardShipping implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  Address? address;

  ///  Address validation details for the shipment.
  IssuingCardShippingAddressValidation? addressValidation;

  ///  The delivery company that shipped a card.
  IssuingCardShippingCarrier? carrier;

  ///  Additional information that may be required for clearing customs.
  IssuingCardShippingCustoms? customs;

  ///  A unix timestamp representing a best estimate of when the card will be delivered.
  int? eta;

  ///  Recipient name.
  String? name;

  ///  The phone number of the receiver of the shipment. Our courier partners will use this number to contact you in the event of card delivery issues. For individual shipments to the EU/UK, if this field is empty, we will provide them with the phone number provided when the cardholder was initially created.
  String? phoneNumber;

  ///  Whether a signature is required for card delivery. This feature is only supported for US users. Standard shipping service does not support signature on delivery. The default value for standard shipping service is false and for express and priority services is true.
  bool? requireSignature;

  ///  Shipment service, such as `standard` or `express`.
  IssuingCardShippingService? service;

  ///  The delivery status of the card.
  IssuingCardShippingStatus? status;

  ///  A tracking number for a card shipment.
  String? trackingNumber;

  ///  A link to the shipping carrier's site where you can view detailed information about a card shipment.
  String? trackingUrl;

  ///  Packaging options.
  IssuingCardShippingType? type_;

  /// Instantiates a new [IssuingCardShipping] and sets the default values.
  IssuingCardShipping() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardShipping createFromDiscriminatorValue(ParseNode parseNode) {
    return IssuingCardShipping();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['address_validation'] = (node) => addressValidation =
        node.getObjectValue<IssuingCardShippingAddressValidation>(
            IssuingCardShippingAddressValidation.createFromDiscriminatorValue);
    deserializerMap['carrier'] = (node) => carrier =
        node.getEnumValue<IssuingCardShippingCarrier>((stringValue) =>
            IssuingCardShippingCarrier.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['customs'] = (node) => customs =
        node.getObjectValue<IssuingCardShippingCustoms>(
            IssuingCardShippingCustoms.createFromDiscriminatorValue);
    deserializerMap['eta'] = (node) => eta = node.getIntValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone_number'] =
        (node) => phoneNumber = node.getStringValue();
    deserializerMap['require_signature'] =
        (node) => requireSignature = node.getBoolValue();
    deserializerMap['service'] = (node) => service =
        node.getEnumValue<IssuingCardShippingService>((stringValue) =>
            IssuingCardShippingService.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<IssuingCardShippingStatus>((stringValue) =>
            IssuingCardShippingStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tracking_number'] =
        (node) => trackingNumber = node.getStringValue();
    deserializerMap['tracking_url'] =
        (node) => trackingUrl = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<IssuingCardShippingType>((stringValue) =>
            IssuingCardShippingType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('address', address);
    writer.writeObjectValue<IssuingCardShippingAddressValidation>(
        'address_validation', addressValidation);
    writer.writeEnumValue<IssuingCardShippingCarrier>(
        'carrier', carrier, (e) => e?.value);
    writer.writeObjectValue<IssuingCardShippingCustoms>('customs', customs);
    writer.writeIntValue('eta', eta);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone_number', phoneNumber);
    writer.writeBoolValue('require_signature', value: requireSignature);
    writer.writeEnumValue<IssuingCardShippingService>(
        'service', service, (e) => e?.value);
    writer.writeEnumValue<IssuingCardShippingStatus>(
        'status', status, (e) => e?.value);
    writer.writeStringValue('tracking_number', trackingNumber);
    writer.writeStringValue('tracking_url', trackingUrl);
    writer.writeEnumValue<IssuingCardShippingType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
