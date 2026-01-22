// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_shipping_cost_member1_shipping_rate_data_delivery_estimate_maximum_unit.dart';

/// auto generated
class WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximum
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The unit property
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximumUnit?
      unit;

  ///  The value property
  int? value;

  /// Instantiates a new [WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximum] and sets the default values.
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximum()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximum
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximum();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['unit'] = (node) => unit = node.getEnumValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximumUnit>(
        (stringValue) =>
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximumUnit
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['value'] = (node) => value = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimateMaximumUnit>(
        'unit', unit, (e) => e?.value);
    writer.writeIntValue('value', value);
    writer.writeAdditionalData(additionalData);
  }
}
