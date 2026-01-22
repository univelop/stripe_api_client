// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './shipping_rates_post_request_body_delivery_estimate.dart';
import './shipping_rates_post_request_body_fixed_amount.dart';
import './shipping_rates_post_request_body_metadata.dart';
import './shipping_rates_post_request_body_tax_behavior.dart';
import './shipping_rates_post_request_body_type.dart';

/// auto generated
class ShippingRatesPostRequestBody implements Parsable {
  ///  The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
  ShippingRatesPostRequestBodyDeliveryEstimate? deliveryEstimate;

  ///  The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
  String? displayName;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
  ShippingRatesPostRequestBodyFixedAmount? fixedAmount;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  ShippingRatesPostRequestBodyMetadata? metadata;

  ///  Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
  ShippingRatesPostRequestBodyTaxBehavior? taxBehavior;

  ///  A [tax code](https://docs.stripe.com/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
  String? taxCode;

  ///  The type of calculation to use on the shipping rate.
  ShippingRatesPostRequestBodyType? type_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ShippingRatesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ShippingRatesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['delivery_estimate'] = (node) => deliveryEstimate =
        node.getObjectValue<ShippingRatesPostRequestBodyDeliveryEstimate>(
            ShippingRatesPostRequestBodyDeliveryEstimate
                .createFromDiscriminatorValue);
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['fixed_amount'] = (node) => fixedAmount =
        node.getObjectValue<ShippingRatesPostRequestBodyFixedAmount>(
            ShippingRatesPostRequestBodyFixedAmount
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ShippingRatesPostRequestBodyMetadata>(
            ShippingRatesPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<ShippingRatesPostRequestBodyTaxBehavior>(
            (stringValue) => ShippingRatesPostRequestBodyTaxBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<ShippingRatesPostRequestBodyType>((stringValue) =>
            ShippingRatesPostRequestBodyType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ShippingRatesPostRequestBodyDeliveryEstimate>(
        'delivery_estimate', deliveryEstimate);
    writer.writeStringValue('display_name', displayName);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<ShippingRatesPostRequestBodyFixedAmount>(
        'fixed_amount', fixedAmount);
    writer.writeObjectValue<ShippingRatesPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeEnumValue<ShippingRatesPostRequestBodyTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeEnumValue<ShippingRatesPostRequestBodyType>(
        'type', type_, (e) => e?.value);
  }
}
