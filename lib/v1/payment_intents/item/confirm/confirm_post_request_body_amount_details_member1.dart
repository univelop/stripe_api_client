// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_amount_details_member1_discount_amount.dart';
import './confirm_post_request_body_amount_details_member1_line_items.dart';
import './confirm_post_request_body_amount_details_member1_shipping.dart';
import './confirm_post_request_body_amount_details_member1_tax.dart';

/// auto generated
class ConfirmPostRequestBodyAmountDetailsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discount_amount property
  ConfirmPostRequestBodyAmountDetailsMember1DiscountAmount? discountAmount;

  ///  The line_items property
  ConfirmPostRequestBodyAmountDetailsMember1LineItems? lineItems;

  ///  The shipping property
  ConfirmPostRequestBodyAmountDetailsMember1Shipping? shipping;

  ///  The tax property
  ConfirmPostRequestBodyAmountDetailsMember1Tax? tax;

  /// Instantiates a new [ConfirmPostRequestBodyAmountDetailsMember1] and sets the default values.
  ConfirmPostRequestBodyAmountDetailsMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyAmountDetailsMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyAmountDetailsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discount_amount'] = (node) => discountAmount =
        node.getObjectValue<
                ConfirmPostRequestBodyAmountDetailsMember1DiscountAmount>(
            ConfirmPostRequestBodyAmountDetailsMember1DiscountAmount
                .createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems = node
        .getObjectValue<ConfirmPostRequestBodyAmountDetailsMember1LineItems>(
            ConfirmPostRequestBodyAmountDetailsMember1LineItems
                .createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<ConfirmPostRequestBodyAmountDetailsMember1Shipping>(
            ConfirmPostRequestBodyAmountDetailsMember1Shipping
                .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax =
        node.getObjectValue<ConfirmPostRequestBodyAmountDetailsMember1Tax>(
            ConfirmPostRequestBodyAmountDetailsMember1Tax
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyAmountDetailsMember1DiscountAmount>(
        'discount_amount', discountAmount);
    writer
        .writeObjectValue<ConfirmPostRequestBodyAmountDetailsMember1LineItems>(
            'line_items', lineItems);
    writer.writeObjectValue<ConfirmPostRequestBodyAmountDetailsMember1Shipping>(
        'shipping', shipping);
    writer.writeObjectValue<ConfirmPostRequestBodyAmountDetailsMember1Tax>(
        'tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
