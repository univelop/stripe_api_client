// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_pricing_pricing_price_details.dart';
import './billing_bill_resource_invoicing_pricing_pricing_type.dart';

/// auto generated
class BillingBillResourceInvoicingPricingPricing
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The price_details property
  BillingBillResourceInvoicingPricingPricingPriceDetails? priceDetails;

  ///  The type of the pricing details.
  BillingBillResourceInvoicingPricingPricingType? type_;

  ///  The unit amount (in the `currency` specified) of the item which contains a decimal value with at most 12 decimal places.
  String? unitAmountDecimal;

  /// Instantiates a new [BillingBillResourceInvoicingPricingPricing] and sets the default values.
  BillingBillResourceInvoicingPricingPricing() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingPricingPricing
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoicingPricingPricing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['price_details'] = (node) => priceDetails = node
        .getObjectValue<BillingBillResourceInvoicingPricingPricingPriceDetails>(
            BillingBillResourceInvoicingPricingPricingPriceDetails
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<BillingBillResourceInvoicingPricingPricingType>(
            (stringValue) => BillingBillResourceInvoicingPricingPricingType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BillingBillResourceInvoicingPricingPricingPriceDetails>(
        'price_details', priceDetails);
    writer.writeEnumValue<BillingBillResourceInvoicingPricingPricingType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
