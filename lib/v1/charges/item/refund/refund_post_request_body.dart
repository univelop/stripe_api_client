// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './refund_post_request_body_reason.dart';

/// auto generated
class RefundPostRequestBody implements Parsable {
  ///  A positive integer in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) representing how much of this charge to refund. Can refund only up to the remaining, unrefunded amount of the charge.
  int? amount;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  For payment methods without native refund support (e.g., Konbini, PromptPay), use this email from the customer to receive refund instructions.
  String? instructionsEmail;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The identifier of the PaymentIntent to refund.
  String? paymentIntent;

  ///  String indicating the reason for the refund. If set, possible values are `duplicate`, `fraudulent`, and `requested_by_customer`. If you believe the charge to be fraudulent, specifying `fraudulent` as the reason will add the associated card and email to your [block lists](https://docs.stripe.com/radar/lists), and will also help us improve our fraud detection algorithms.
  RefundPostRequestBodyReason? reason;

  ///  Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
  bool? refundApplicationFee;

  ///  Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount).<br><br>A transfer can be reversed only by the application that created the charge.
  bool? reverseTransfer;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RefundPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RefundPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['instructions_email'] =
        (node) => instructionsEmail = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['payment_intent'] =
        (node) => paymentIntent = node.getStringValue();
    deserializerMap['reason'] = (node) => reason =
        node.getEnumValue<RefundPostRequestBodyReason>((stringValue) =>
            RefundPostRequestBodyReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['refund_application_fee'] =
        (node) => refundApplicationFee = node.getBoolValue();
    deserializerMap['reverse_transfer'] =
        (node) => reverseTransfer = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('instructions_email', instructionsEmail);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('payment_intent', paymentIntent);
    writer.writeEnumValue<RefundPostRequestBodyReason>(
        'reason', reason, (e) => e?.value);
    writer.writeBoolValue('refund_application_fee',
        value: refundApplicationFee);
    writer.writeBoolValue('reverse_transfer', value: reverseTransfer);
  }
}
