// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_shipping_cost_shipping_rate_data_delivery_estimate.dart';
import './invoices_post_request_body_shipping_cost_shipping_rate_data_fixed_amount.dart';
import './invoices_post_request_body_shipping_cost_shipping_rate_data_metadata.dart';
import './invoices_post_request_body_shipping_cost_shipping_rate_data_tax_behavior.dart';
import './invoices_post_request_body_shipping_cost_shipping_rate_data_type.dart';

/// auto generated
class InvoicesPostRequestBodyShippingCostShippingRateData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The delivery_estimate property
  InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimate?
      deliveryEstimate;

  ///  The display_name property
  String? displayName;

  ///  The fixed_amount property
  InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmount? fixedAmount;

  ///  The metadata property
  InvoicesPostRequestBodyShippingCostShippingRateDataMetadata? metadata;

  ///  The tax_behavior property
  InvoicesPostRequestBodyShippingCostShippingRateDataTaxBehavior? taxBehavior;

  ///  The tax_code property
  String? taxCode;

  ///  The type property
  InvoicesPostRequestBodyShippingCostShippingRateDataType? type_;

  /// Instantiates a new [InvoicesPostRequestBodyShippingCostShippingRateData] and sets the default values.
  InvoicesPostRequestBodyShippingCostShippingRateData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyShippingCostShippingRateData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicesPostRequestBodyShippingCostShippingRateData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'delivery_estimate'] = (node) => deliveryEstimate = node.getObjectValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimate>(
        InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimate
            .createFromDiscriminatorValue);
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['fixed_amount'] = (node) => fixedAmount =
        node.getObjectValue<
                InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmount>(
            InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmount
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataMetadata>(
        InvoicesPostRequestBodyShippingCostShippingRateDataMetadata
            .createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior = node.getEnumValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataTaxBehavior>(
        (stringValue) =>
            InvoicesPostRequestBodyShippingCostShippingRateDataTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<InvoicesPostRequestBodyShippingCostShippingRateDataType>(
            (stringValue) =>
                InvoicesPostRequestBodyShippingCostShippingRateDataType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataDeliveryEstimate>(
        'delivery_estimate', deliveryEstimate);
    writer.writeStringValue('display_name', displayName);
    writer.writeObjectValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmount>(
        'fixed_amount', fixedAmount);
    writer.writeObjectValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataMetadata>(
        'metadata', metadata);
    writer.writeEnumValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeEnumValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
