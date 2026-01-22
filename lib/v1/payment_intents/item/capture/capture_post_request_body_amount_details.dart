// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_amount_details_discount_amount.dart';
import './capture_post_request_body_amount_details_line_items.dart';
import './capture_post_request_body_amount_details_shipping.dart';
import './capture_post_request_body_amount_details_tax.dart';

/// auto generated
/// Provides industry-specific information about the amount.
class CapturePostRequestBodyAmountDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discount_amount property
  CapturePostRequestBodyAmountDetailsDiscountAmount? discountAmount;

  ///  The line_items property
  CapturePostRequestBodyAmountDetailsLineItems? lineItems;

  ///  The shipping property
  CapturePostRequestBodyAmountDetailsShipping? shipping;

  ///  The tax property
  CapturePostRequestBodyAmountDetailsTax? tax;

  /// Instantiates a new [CapturePostRequestBodyAmountDetails] and sets the default values.
  CapturePostRequestBodyAmountDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyAmountDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CapturePostRequestBodyAmountDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discount_amount'] = (node) => discountAmount =
        node.getObjectValue<CapturePostRequestBodyAmountDetailsDiscountAmount>(
            CapturePostRequestBodyAmountDetailsDiscountAmount
                .createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems =
        node.getObjectValue<CapturePostRequestBodyAmountDetailsLineItems>(
            CapturePostRequestBodyAmountDetailsLineItems
                .createFromDiscriminatorValue);
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<CapturePostRequestBodyAmountDetailsShipping>(
            CapturePostRequestBodyAmountDetailsShipping
                .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax = node.getObjectValue<
            CapturePostRequestBodyAmountDetailsTax>(
        CapturePostRequestBodyAmountDetailsTax.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CapturePostRequestBodyAmountDetailsDiscountAmount>(
        'discount_amount', discountAmount);
    writer.writeObjectValue<CapturePostRequestBodyAmountDetailsLineItems>(
        'line_items', lineItems);
    writer.writeObjectValue<CapturePostRequestBodyAmountDetailsShipping>(
        'shipping', shipping);
    writer.writeObjectValue<CapturePostRequestBodyAmountDetailsTax>('tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
