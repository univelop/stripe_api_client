// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './increment_authorization_post_request_body_amount_details_discount_amount.dart';
import './increment_authorization_post_request_body_amount_details_line_items.dart';
import './increment_authorization_post_request_body_amount_details_shipping.dart';
import './increment_authorization_post_request_body_amount_details_tax.dart';

/// auto generated
/// Provides industry-specific information about the amount.
class IncrementAuthorizationPostRequestBodyAmountDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discount_amount property
  IncrementAuthorizationPostRequestBodyAmountDetailsDiscountAmount?
      discountAmount;

  ///  The line_items property
  IncrementAuthorizationPostRequestBodyAmountDetailsLineItems? lineItems;

  ///  The shipping property
  IncrementAuthorizationPostRequestBodyAmountDetailsShipping? shipping;

  ///  The tax property
  IncrementAuthorizationPostRequestBodyAmountDetailsTax? tax;

  /// Instantiates a new [IncrementAuthorizationPostRequestBodyAmountDetails] and sets the default values.
  IncrementAuthorizationPostRequestBodyAmountDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IncrementAuthorizationPostRequestBodyAmountDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IncrementAuthorizationPostRequestBodyAmountDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'discount_amount'] = (node) => discountAmount = node.getObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsDiscountAmount>(
        IncrementAuthorizationPostRequestBodyAmountDetailsDiscountAmount
            .createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems = node.getObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsLineItems>(
        IncrementAuthorizationPostRequestBodyAmountDetailsLineItems
            .createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping = node.getObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsShipping>(
        IncrementAuthorizationPostRequestBodyAmountDetailsShipping
            .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax = node
        .getObjectValue<IncrementAuthorizationPostRequestBodyAmountDetailsTax>(
            IncrementAuthorizationPostRequestBodyAmountDetailsTax
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsDiscountAmount>(
        'discount_amount', discountAmount);
    writer.writeObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsLineItems>(
        'line_items', lineItems);
    writer.writeObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsShipping>(
        'shipping', shipping);
    writer.writeObjectValue<
        IncrementAuthorizationPostRequestBodyAmountDetailsTax>('tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
