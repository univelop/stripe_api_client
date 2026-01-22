// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_amount_details_resource_line_items_list_resource_line_item_resource_payment_method_options.dart';
import './payment_flows_amount_details_resource_line_items_list_resource_line_item_resource_tax.dart';
import './payment_intent_amount_details_line_item_object.dart';

/// auto generated
class PaymentIntentAmountDetailsLineItem
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discount applied on this line item represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). An integer greater than 0.This field is mutually exclusive with the `amount_details[discount_amount]` field.
  int? discountAmount;

  ///  Unique identifier for the object.
  String? id;

  ///  String representing the object's type. Objects of the same type share the same value.
  PaymentIntentAmountDetailsLineItemObject? object;

  ///  Payment method-specific information for line items.
  PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions?
      paymentMethodOptions;

  ///  The product code of the line item, such as an SKU. Required for L3 rates. At most 12 characters long.
  String? productCode;

  ///  The product name of the line item. Required for L3 rates. At most 1024 characters long.For Cards, this field is truncated to 26 alphanumeric characters before being sent to the card networks. For Paypal, this field is truncated to 127 characters.
  String? productName;

  ///  The quantity of items. Required for L3 rates. An integer greater than 0.
  int? quantity;

  ///  Contains information about the tax on the item.
  PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourceTax?
      tax;

  ///  The unit cost of the line item represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Required for L3 rates. An integer greater than or equal to 0.
  int? unitCost;

  ///  A unit of measure for the line item, such as gallons, feet, meters, etc. Required for L3 rates. At most 12 alphanumeric characters long.
  String? unitOfMeasure;

  /// Instantiates a new [PaymentIntentAmountDetailsLineItem] and sets the default values.
  PaymentIntentAmountDetailsLineItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentAmountDetailsLineItem createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentAmountDetailsLineItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discount_amount'] =
        (node) => discountAmount = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PaymentIntentAmountDetailsLineItemObject>(
            (stringValue) => PaymentIntentAmountDetailsLineItemObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<
                PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions>(
            PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['product_code'] =
        (node) => productCode = node.getStringValue();
    deserializerMap['product_name'] =
        (node) => productName = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax'] = (node) => tax = node.getObjectValue<
            PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourceTax>(
        PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourceTax
            .createFromDiscriminatorValue);
    deserializerMap['unit_cost'] = (node) => unitCost = node.getIntValue();
    deserializerMap['unit_of_measure'] =
        (node) => unitOfMeasure = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('discount_amount', discountAmount);
    writer.writeStringValue('id', id);
    writer.writeEnumValue<PaymentIntentAmountDetailsLineItemObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<
            PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeStringValue('product_code', productCode);
    writer.writeStringValue('product_name', productName);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<
            PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourceTax>(
        'tax', tax);
    writer.writeIntValue('unit_cost', unitCost);
    writer.writeStringValue('unit_of_measure', unitOfMeasure);
    writer.writeAdditionalData(additionalData);
  }
}
