// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_pricing_pricing_price_details_price.dart';

/// auto generated
class BillingBillResourceInvoicingPricingPricingPriceDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ID of the price this item is associated with.
  BillingBillResourceInvoicingPricingPricingPriceDetailsPrice? price;

  ///  The ID of the product this item is associated with.
  String? product;

  /// Instantiates a new [BillingBillResourceInvoicingPricingPricingPriceDetails] and sets the default values.
  BillingBillResourceInvoicingPricingPricingPriceDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingPricingPricingPriceDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoicingPricingPricingPriceDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['price'] = (node) => price = node.getObjectValue<
            BillingBillResourceInvoicingPricingPricingPriceDetailsPrice>(
        BillingBillResourceInvoicingPricingPricingPriceDetailsPrice
            .createFromDiscriminatorValue);
    deserializerMap['product'] = (node) => product = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BillingBillResourceInvoicingPricingPricingPriceDetailsPrice>(
        'price', price);
    writer.writeStringValue('product', product);
    writer.writeAdditionalData(additionalData);
  }
}
