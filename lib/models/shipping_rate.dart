// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './shipping_rate_delivery_estimate.dart';
import './shipping_rate_fixed_amount.dart';
import './shipping_rate_metadata.dart';
import './shipping_rate_object.dart';
import './shipping_rate_tax_behavior.dart';
import './shipping_rate_tax_code.dart';
import './shipping_rate_type.dart';

/// auto generated
/// Shipping rates describe the price of shipping presented to your customers andapplied to a purchase. For more information, see [Charge for shipping](https://docs.stripe.com/payments/during-payment/charge-shipping).
class ShippingRate implements AdditionalDataHolder, Parsable {
  ///  Whether the shipping rate can be used for new purchases. Defaults to `true`.
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
  ShippingRateDeliveryEstimate? deliveryEstimate;

  ///  The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
  String? displayName;

  ///  The fixed_amount property
  ShippingRateFixedAmount? fixedAmount;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  ShippingRateMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  ShippingRateObject? object;

  ///  Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
  ShippingRateTaxBehavior? taxBehavior;

  ///  A [tax code](https://docs.stripe.com/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
  ShippingRateTaxCode? taxCode;

  ///  The type of calculation to use on the shipping rate.
  ShippingRateType? type_;

  /// Instantiates a new [ShippingRate] and sets the default values.
  ShippingRate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ShippingRate createFromDiscriminatorValue(ParseNode parseNode) {
    return ShippingRate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['delivery_estimate'] = (node) => deliveryEstimate =
        node.getObjectValue<ShippingRateDeliveryEstimate>(
            ShippingRateDeliveryEstimate.createFromDiscriminatorValue);
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['fixed_amount'] = (node) => fixedAmount =
        node.getObjectValue<ShippingRateFixedAmount>(
            ShippingRateFixedAmount.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ShippingRateMetadata>(
            ShippingRateMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ShippingRateObject>((stringValue) =>
            ShippingRateObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<ShippingRateTaxBehavior>((stringValue) =>
            ShippingRateTaxBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode =
        node.getObjectValue<ShippingRateTaxCode>(
            ShippingRateTaxCode.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<ShippingRateType>((stringValue) => ShippingRateType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<ShippingRateDeliveryEstimate>(
        'delivery_estimate', deliveryEstimate);
    writer.writeStringValue('display_name', displayName);
    writer.writeObjectValue<ShippingRateFixedAmount>(
        'fixed_amount', fixedAmount);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<ShippingRateMetadata>('metadata', metadata);
    writer.writeEnumValue<ShippingRateObject>(
        'object', object, (e) => e?.value);
    writer.writeEnumValue<ShippingRateTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeObjectValue<ShippingRateTaxCode>('tax_code', taxCode);
    writer.writeEnumValue<ShippingRateType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
