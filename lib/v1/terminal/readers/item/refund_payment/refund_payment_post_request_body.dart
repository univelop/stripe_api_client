// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './refund_payment_post_request_body_metadata.dart';
import './refund_payment_post_request_body_refund_payment_config.dart';

/// auto generated
class RefundPaymentPostRequestBody implements Parsable {
  ///  A positive integer in __cents__ representing how much of this charge to refund.
  int? amount;

  ///  ID of the Charge to refund.
  String? charge;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  RefundPaymentPostRequestBodyMetadata? metadata;

  ///  ID of the PaymentIntent to refund.
  String? paymentIntent;

  ///  Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
  bool? refundApplicationFee;

  ///  Configuration overrides for this refund, such as customer cancellation settings.
  RefundPaymentPostRequestBodyRefundPaymentConfig? refundPaymentConfig;

  ///  Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
  bool? reverseTransfer;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RefundPaymentPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RefundPaymentPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['charge'] = (node) => charge = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<RefundPaymentPostRequestBodyMetadata>(
            RefundPaymentPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['payment_intent'] =
        (node) => paymentIntent = node.getStringValue();
    deserializerMap['refund_application_fee'] =
        (node) => refundApplicationFee = node.getBoolValue();
    deserializerMap['refund_payment_config'] = (node) => refundPaymentConfig =
        node.getObjectValue<RefundPaymentPostRequestBodyRefundPaymentConfig>(
            RefundPaymentPostRequestBodyRefundPaymentConfig
                .createFromDiscriminatorValue);
    deserializerMap['reverse_transfer'] =
        (node) => reverseTransfer = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('charge', charge);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<RefundPaymentPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('payment_intent', paymentIntent);
    writer.writeBoolValue('refund_application_fee',
        value: refundApplicationFee);
    writer.writeObjectValue<RefundPaymentPostRequestBodyRefundPaymentConfig>(
        'refund_payment_config', refundPaymentConfig);
    writer.writeBoolValue('reverse_transfer', value: reverseTransfer);
  }
}
