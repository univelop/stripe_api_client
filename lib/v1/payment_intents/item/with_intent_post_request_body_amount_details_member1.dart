// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_amount_details_member1_discount_amount.dart';
import './with_intent_post_request_body_amount_details_member1_line_items.dart';
import './with_intent_post_request_body_amount_details_member1_shipping.dart';
import './with_intent_post_request_body_amount_details_member1_tax.dart';

/// auto generated
class WithIntentPostRequestBodyAmountDetailsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discount_amount property
  WithIntentPostRequestBodyAmountDetailsMember1DiscountAmount? discountAmount;

  ///  The line_items property
  WithIntentPostRequestBodyAmountDetailsMember1LineItems? lineItems;

  ///  The shipping property
  WithIntentPostRequestBodyAmountDetailsMember1Shipping? shipping;

  ///  The tax property
  WithIntentPostRequestBodyAmountDetailsMember1Tax? tax;

  /// Instantiates a new [WithIntentPostRequestBodyAmountDetailsMember1] and sets the default values.
  WithIntentPostRequestBodyAmountDetailsMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyAmountDetailsMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyAmountDetailsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discount_amount'] = (node) => discountAmount =
        node.getObjectValue<
                WithIntentPostRequestBodyAmountDetailsMember1DiscountAmount>(
            WithIntentPostRequestBodyAmountDetailsMember1DiscountAmount
                .createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems = node
        .getObjectValue<WithIntentPostRequestBodyAmountDetailsMember1LineItems>(
            WithIntentPostRequestBodyAmountDetailsMember1LineItems
                .createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping = node
        .getObjectValue<WithIntentPostRequestBodyAmountDetailsMember1Shipping>(
            WithIntentPostRequestBodyAmountDetailsMember1Shipping
                .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax =
        node.getObjectValue<WithIntentPostRequestBodyAmountDetailsMember1Tax>(
            WithIntentPostRequestBodyAmountDetailsMember1Tax
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithIntentPostRequestBodyAmountDetailsMember1DiscountAmount>(
        'discount_amount', discountAmount);
    writer.writeObjectValue<
            WithIntentPostRequestBodyAmountDetailsMember1LineItems>(
        'line_items', lineItems);
    writer.writeObjectValue<
            WithIntentPostRequestBodyAmountDetailsMember1Shipping>(
        'shipping', shipping);
    writer.writeObjectValue<WithIntentPostRequestBodyAmountDetailsMember1Tax>(
        'tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
