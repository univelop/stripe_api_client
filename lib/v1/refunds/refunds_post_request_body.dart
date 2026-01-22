// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './refunds_post_request_body_origin.dart';
import './refunds_post_request_body_reason.dart';

/// auto generated
class RefundsPostRequestBody implements Parsable {
  ///  The amount property
  int? amount;

  ///  The identifier of the charge to refund.
  String? charge;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Customer whose customer balance to refund from.
  String? customer;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  For payment methods without native refund support (e.g., Konbini, PromptPay), use this email from the customer to receive refund instructions.
  String? instructionsEmail;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Origin of the refund
  RefundsPostRequestBodyOrigin? origin;

  ///  The identifier of the PaymentIntent to refund.
  String? paymentIntent;

  ///  String indicating the reason for the refund. If set, possible values are `duplicate`, `fraudulent`, and `requested_by_customer`. If you believe the charge to be fraudulent, specifying `fraudulent` as the reason will add the associated card and email to your [block lists](https://docs.stripe.com/radar/lists), and will also help us improve our fraud detection algorithms.
  RefundsPostRequestBodyReason? reason;

  ///  Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
  bool? refundApplicationFee;

  ///  Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount).<br><br>A transfer can be reversed only by the application that created the charge.
  bool? reverseTransfer;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RefundsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RefundsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['charge'] = (node) => charge = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['instructions_email'] =
        (node) => instructionsEmail = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['origin'] = (node) => origin =
        node.getEnumValue<RefundsPostRequestBodyOrigin>((stringValue) =>
            RefundsPostRequestBodyOrigin.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_intent'] =
        (node) => paymentIntent = node.getStringValue();
    deserializerMap['reason'] = (node) => reason =
        node.getEnumValue<RefundsPostRequestBodyReason>((stringValue) =>
            RefundsPostRequestBodyReason.values
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
    writer.writeStringValue('charge', charge);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('instructions_email', instructionsEmail);
    writer.writeStringValue('metadata', metadata);
    writer.writeEnumValue<RefundsPostRequestBodyOrigin>(
        'origin', origin, (e) => e?.value);
    writer.writeStringValue('payment_intent', paymentIntent);
    writer.writeEnumValue<RefundsPostRequestBodyReason>(
        'reason', reason, (e) => e?.value);
    writer.writeBoolValue('refund_application_fee',
        value: refundApplicationFee);
    writer.writeBoolValue('reverse_transfer', value: reverseTransfer);
  }
}
