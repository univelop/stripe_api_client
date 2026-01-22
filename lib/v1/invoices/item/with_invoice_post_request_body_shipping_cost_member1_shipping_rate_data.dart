// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_shipping_cost_member1_shipping_rate_data_delivery_estimate.dart';
import './with_invoice_post_request_body_shipping_cost_member1_shipping_rate_data_fixed_amount.dart';
import './with_invoice_post_request_body_shipping_cost_member1_shipping_rate_data_metadata.dart';
import './with_invoice_post_request_body_shipping_cost_member1_shipping_rate_data_tax_behavior.dart';
import './with_invoice_post_request_body_shipping_cost_member1_shipping_rate_data_type.dart';

/// auto generated
class WithInvoicePostRequestBodyShippingCostMember1ShippingRateData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The delivery_estimate property
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimate?
      deliveryEstimate;

  ///  The display_name property
  String? displayName;

  ///  The fixed_amount property
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataFixedAmount?
      fixedAmount;

  ///  The metadata property
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataMetadata?
      metadata;

  ///  The tax_behavior property
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataTaxBehavior?
      taxBehavior;

  ///  The tax_code property
  String? taxCode;

  ///  The type property
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataType? type_;

  /// Instantiates a new [WithInvoicePostRequestBodyShippingCostMember1ShippingRateData] and sets the default values.
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateData()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyShippingCostMember1ShippingRateData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyShippingCostMember1ShippingRateData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'delivery_estimate'] = (node) => deliveryEstimate = node.getObjectValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimate>(
        WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimate
            .createFromDiscriminatorValue);
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap[
        'fixed_amount'] = (node) => fixedAmount = node.getObjectValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataFixedAmount>(
        WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataFixedAmount
            .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataMetadata>(
        WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataMetadata
            .createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior = node.getEnumValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataTaxBehavior>(
        (stringValue) =>
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataType>(
        (stringValue) =>
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataDeliveryEstimate>(
        'delivery_estimate', deliveryEstimate);
    writer.writeStringValue('display_name', displayName);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataFixedAmount>(
        'fixed_amount', fixedAmount);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataMetadata>(
        'metadata', metadata);
    writer.writeEnumValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeEnumValue<
            WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
