// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_refund_post_request_body_amount.dart';
import './report_refund_post_request_body_outcome.dart';
import './report_refund_post_request_body_processor_details.dart';
import './report_refund_post_request_body_refunded.dart';

/// auto generated
class ReportRefundPostRequestBody implements Parsable {
  ///  A positive integer in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) representing how much of this payment to refund. Can refund only up to the remaining, unrefunded amount of the payment.
  ReportRefundPostRequestBodyAmount? amount;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  When the reported refund was initiated. Measured in seconds since the Unix epoch.
  int? initiatedAt;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The outcome of the reported refund.
  ReportRefundPostRequestBodyOutcome? outcome;

  ///  Processor information for this refund.
  ReportRefundPostRequestBodyProcessorDetails? processorDetails;

  ///  Information about the payment attempt refund.
  ReportRefundPostRequestBodyRefunded? refunded;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportRefundPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReportRefundPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount =
        node.getObjectValue<ReportRefundPostRequestBodyAmount>(
            ReportRefundPostRequestBodyAmount.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['initiated_at'] =
        (node) => initiatedAt = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['outcome'] = (node) => outcome =
        node.getEnumValue<ReportRefundPostRequestBodyOutcome>((stringValue) =>
            ReportRefundPostRequestBodyOutcome.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['processor_details'] = (node) => processorDetails =
        node.getObjectValue<ReportRefundPostRequestBodyProcessorDetails>(
            ReportRefundPostRequestBodyProcessorDetails
                .createFromDiscriminatorValue);
    deserializerMap['refunded'] = (node) => refunded =
        node.getObjectValue<ReportRefundPostRequestBodyRefunded>(
            ReportRefundPostRequestBodyRefunded.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ReportRefundPostRequestBodyAmount>(
        'amount', amount);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('initiated_at', initiatedAt);
    writer.writeStringValue('metadata', metadata);
    writer.writeEnumValue<ReportRefundPostRequestBodyOutcome>(
        'outcome', outcome, (e) => e?.value);
    writer.writeObjectValue<ReportRefundPostRequestBodyProcessorDetails>(
        'processor_details', processorDetails);
    writer.writeObjectValue<ReportRefundPostRequestBodyRefunded>(
        'refunded', refunded);
  }
}
