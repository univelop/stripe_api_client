// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './line_items_tax_amount.dart';
import './payment_pages_checkout_session_shipping_cost_shipping_rate.dart';

/// auto generated
class PaymentPagesCheckoutSessionShippingCost
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Total shipping cost before any discounts or taxes are applied.
  int? amountSubtotal;

  ///  Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
  int? amountTax;

  ///  Total shipping cost after discounts and taxes are applied.
  int? amountTotal;

  ///  The ID of the ShippingRate for this order.
  PaymentPagesCheckoutSessionShippingCostShippingRate? shippingRate;

  ///  The taxes applied to the shipping rate.
  Iterable<LineItemsTaxAmount>? taxes;

  /// Instantiates a new [PaymentPagesCheckoutSessionShippingCost] and sets the default values.
  PaymentPagesCheckoutSessionShippingCost() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionShippingCost createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentPagesCheckoutSessionShippingCost();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_subtotal'] =
        (node) => amountSubtotal = node.getIntValue();
    deserializerMap['amount_tax'] = (node) => amountTax = node.getIntValue();
    deserializerMap['amount_total'] =
        (node) => amountTotal = node.getIntValue();
    deserializerMap['shipping_rate'] = (node) => shippingRate = node
        .getObjectValue<PaymentPagesCheckoutSessionShippingCostShippingRate>(
            PaymentPagesCheckoutSessionShippingCostShippingRate
                .createFromDiscriminatorValue);
    deserializerMap['taxes'] = (node) => taxes =
        node.getCollectionOfObjectValues<LineItemsTaxAmount>(
            LineItemsTaxAmount.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_subtotal', amountSubtotal);
    writer.writeIntValue('amount_tax', amountTax);
    writer.writeIntValue('amount_total', amountTotal);
    writer
        .writeObjectValue<PaymentPagesCheckoutSessionShippingCostShippingRate>(
            'shipping_rate', shippingRate);
    writer.writeCollectionOfObjectValues<LineItemsTaxAmount>('taxes', taxes);
    writer.writeAdditionalData(additionalData);
  }
}
