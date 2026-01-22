// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_payment_attempt_post_request_body_failed.dart';
import './report_payment_attempt_post_request_body_guaranteed.dart';
import './report_payment_attempt_post_request_body_outcome.dart';
import './report_payment_attempt_post_request_body_payment_method_details.dart';
import './report_payment_attempt_post_request_body_shipping_details.dart';

/// auto generated
class ReportPaymentAttemptPostRequestBody implements Parsable {
  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Information about the payment attempt failure.
  ReportPaymentAttemptPostRequestBodyFailed? failed;

  ///  Information about the payment attempt guarantee.
  ReportPaymentAttemptPostRequestBodyGuaranteed? guaranteed;

  ///  When the reported payment was initiated. Measured in seconds since the Unix epoch.
  int? initiatedAt;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The outcome of the reported payment.
  ReportPaymentAttemptPostRequestBodyOutcome? outcome;

  ///  Information about the Payment Method debited for this payment.
  ReportPaymentAttemptPostRequestBodyPaymentMethodDetails? paymentMethodDetails;

  ///  Shipping information for this payment.
  ReportPaymentAttemptPostRequestBodyShippingDetails? shippingDetails;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentAttemptPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReportPaymentAttemptPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['failed'] = (node) => failed = node.getObjectValue<
            ReportPaymentAttemptPostRequestBodyFailed>(
        ReportPaymentAttemptPostRequestBodyFailed.createFromDiscriminatorValue);
    deserializerMap['guaranteed'] = (node) => guaranteed =
        node.getObjectValue<ReportPaymentAttemptPostRequestBodyGuaranteed>(
            ReportPaymentAttemptPostRequestBodyGuaranteed
                .createFromDiscriminatorValue);
    deserializerMap['initiated_at'] =
        (node) => initiatedAt = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['outcome'] = (node) => outcome =
        node.getEnumValue<ReportPaymentAttemptPostRequestBodyOutcome>(
            (stringValue) => ReportPaymentAttemptPostRequestBodyOutcome.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_method_details'] = (node) => paymentMethodDetails =
        node.getObjectValue<
                ReportPaymentAttemptPostRequestBodyPaymentMethodDetails>(
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetails
                .createFromDiscriminatorValue);
    deserializerMap['shipping_details'] = (node) => shippingDetails =
        node.getObjectValue<ReportPaymentAttemptPostRequestBodyShippingDetails>(
            ReportPaymentAttemptPostRequestBodyShippingDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<ReportPaymentAttemptPostRequestBodyFailed>(
        'failed', failed);
    writer.writeObjectValue<ReportPaymentAttemptPostRequestBodyGuaranteed>(
        'guaranteed', guaranteed);
    writer.writeIntValue('initiated_at', initiatedAt);
    writer.writeStringValue('metadata', metadata);
    writer.writeEnumValue<ReportPaymentAttemptPostRequestBodyOutcome>(
        'outcome', outcome, (e) => e?.value);
    writer.writeObjectValue<
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetails>(
        'payment_method_details', paymentMethodDetails);
    writer.writeObjectValue<ReportPaymentAttemptPostRequestBodyShippingDetails>(
        'shipping_details', shippingDetails);
  }
}
