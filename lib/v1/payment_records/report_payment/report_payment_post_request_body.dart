// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_payment_post_request_body_amount_requested.dart';
import './report_payment_post_request_body_customer_details.dart';
import './report_payment_post_request_body_customer_presence.dart';
import './report_payment_post_request_body_failed.dart';
import './report_payment_post_request_body_guaranteed.dart';
import './report_payment_post_request_body_outcome.dart';
import './report_payment_post_request_body_payment_method_details.dart';
import './report_payment_post_request_body_processor_details.dart';
import './report_payment_post_request_body_shipping_details.dart';

/// auto generated
class ReportPaymentPostRequestBody implements Parsable {
  ///  The amount you initially requested for this payment.
  ReportPaymentPostRequestBodyAmountRequested? amountRequested;

  ///  Customer information for this payment.
  ReportPaymentPostRequestBodyCustomerDetails? customerDetails;

  ///  Indicates whether the customer was present in your checkout flow during this payment.
  ReportPaymentPostRequestBodyCustomerPresence? customerPresence;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Information about the payment attempt failure.
  ReportPaymentPostRequestBodyFailed? failed;

  ///  Information about the payment attempt guarantee.
  ReportPaymentPostRequestBodyGuaranteed? guaranteed;

  ///  When the reported payment was initiated. Measured in seconds since the Unix epoch.
  int? initiatedAt;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The outcome of the reported payment.
  ReportPaymentPostRequestBodyOutcome? outcome;

  ///  Information about the Payment Method debited for this payment.
  ReportPaymentPostRequestBodyPaymentMethodDetails? paymentMethodDetails;

  ///  Processor information for this payment.
  ReportPaymentPostRequestBodyProcessorDetails? processorDetails;

  ///  Shipping information for this payment.
  ReportPaymentPostRequestBodyShippingDetails? shippingDetails;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReportPaymentPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_requested'] = (node) => amountRequested =
        node.getObjectValue<ReportPaymentPostRequestBodyAmountRequested>(
            ReportPaymentPostRequestBodyAmountRequested
                .createFromDiscriminatorValue);
    deserializerMap['customer_details'] = (node) => customerDetails =
        node.getObjectValue<ReportPaymentPostRequestBodyCustomerDetails>(
            ReportPaymentPostRequestBodyCustomerDetails
                .createFromDiscriminatorValue);
    deserializerMap['customer_presence'] = (node) => customerPresence =
        node.getEnumValue<ReportPaymentPostRequestBodyCustomerPresence>(
            (stringValue) => ReportPaymentPostRequestBodyCustomerPresence.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['failed'] = (node) => failed =
        node.getObjectValue<ReportPaymentPostRequestBodyFailed>(
            ReportPaymentPostRequestBodyFailed.createFromDiscriminatorValue);
    deserializerMap['guaranteed'] = (node) => guaranteed = node.getObjectValue<
            ReportPaymentPostRequestBodyGuaranteed>(
        ReportPaymentPostRequestBodyGuaranteed.createFromDiscriminatorValue);
    deserializerMap['initiated_at'] =
        (node) => initiatedAt = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['outcome'] = (node) => outcome =
        node.getEnumValue<ReportPaymentPostRequestBodyOutcome>((stringValue) =>
            ReportPaymentPostRequestBodyOutcome.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_method_details'] = (node) => paymentMethodDetails =
        node.getObjectValue<ReportPaymentPostRequestBodyPaymentMethodDetails>(
            ReportPaymentPostRequestBodyPaymentMethodDetails
                .createFromDiscriminatorValue);
    deserializerMap['processor_details'] = (node) => processorDetails =
        node.getObjectValue<ReportPaymentPostRequestBodyProcessorDetails>(
            ReportPaymentPostRequestBodyProcessorDetails
                .createFromDiscriminatorValue);
    deserializerMap['shipping_details'] = (node) => shippingDetails =
        node.getObjectValue<ReportPaymentPostRequestBodyShippingDetails>(
            ReportPaymentPostRequestBodyShippingDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ReportPaymentPostRequestBodyAmountRequested>(
        'amount_requested', amountRequested);
    writer.writeObjectValue<ReportPaymentPostRequestBodyCustomerDetails>(
        'customer_details', customerDetails);
    writer.writeEnumValue<ReportPaymentPostRequestBodyCustomerPresence>(
        'customer_presence', customerPresence, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<ReportPaymentPostRequestBodyFailed>(
        'failed', failed);
    writer.writeObjectValue<ReportPaymentPostRequestBodyGuaranteed>(
        'guaranteed', guaranteed);
    writer.writeIntValue('initiated_at', initiatedAt);
    writer.writeStringValue('metadata', metadata);
    writer.writeEnumValue<ReportPaymentPostRequestBodyOutcome>(
        'outcome', outcome, (e) => e?.value);
    writer.writeObjectValue<ReportPaymentPostRequestBodyPaymentMethodDetails>(
        'payment_method_details', paymentMethodDetails);
    writer.writeObjectValue<ReportPaymentPostRequestBodyProcessorDetails>(
        'processor_details', processorDetails);
    writer.writeObjectValue<ReportPaymentPostRequestBodyShippingDetails>(
        'shipping_details', shippingDetails);
  }
}
