// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_amount_details_discount_amount.dart';
import './payment_intents_post_request_body_amount_details_line_items.dart';
import './payment_intents_post_request_body_amount_details_shipping.dart';
import './payment_intents_post_request_body_amount_details_tax.dart';

/// auto generated
/// Provides industry-specific information about the amount.
class PaymentIntentsPostRequestBodyAmountDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discount_amount property
  PaymentIntentsPostRequestBodyAmountDetailsDiscountAmount? discountAmount;

  ///  The line_items property
  PaymentIntentsPostRequestBodyAmountDetailsLineItems? lineItems;

  ///  The shipping property
  PaymentIntentsPostRequestBodyAmountDetailsShipping? shipping;

  ///  The tax property
  PaymentIntentsPostRequestBodyAmountDetailsTax? tax;

  /// Instantiates a new [PaymentIntentsPostRequestBodyAmountDetails] and sets the default values.
  PaymentIntentsPostRequestBodyAmountDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyAmountDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyAmountDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discount_amount'] = (node) => discountAmount =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyAmountDetailsDiscountAmount>(
            PaymentIntentsPostRequestBodyAmountDetailsDiscountAmount
                .createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems = node
        .getObjectValue<PaymentIntentsPostRequestBodyAmountDetailsLineItems>(
            PaymentIntentsPostRequestBodyAmountDetailsLineItems
                .createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<PaymentIntentsPostRequestBodyAmountDetailsShipping>(
            PaymentIntentsPostRequestBodyAmountDetailsShipping
                .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax =
        node.getObjectValue<PaymentIntentsPostRequestBodyAmountDetailsTax>(
            PaymentIntentsPostRequestBodyAmountDetailsTax
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyAmountDetailsDiscountAmount>(
        'discount_amount', discountAmount);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyAmountDetailsLineItems>(
            'line_items', lineItems);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyAmountDetailsShipping>(
        'shipping', shipping);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyAmountDetailsTax>(
        'tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
