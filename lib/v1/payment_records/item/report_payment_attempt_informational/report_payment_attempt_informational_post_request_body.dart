// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_payment_attempt_informational_post_request_body_customer_details.dart';
import './report_payment_attempt_informational_post_request_body_description.dart';
import './report_payment_attempt_informational_post_request_body_shipping_details.dart';

/// auto generated
class ReportPaymentAttemptInformationalPostRequestBody implements Parsable {
  ///  Customer information for this payment.
  ReportPaymentAttemptInformationalPostRequestBodyCustomerDetails?
      customerDetails;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  ReportPaymentAttemptInformationalPostRequestBodyDescription? description;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Shipping information for this payment.
  ReportPaymentAttemptInformationalPostRequestBodyShippingDetails?
      shippingDetails;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentAttemptInformationalPostRequestBody
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportPaymentAttemptInformationalPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'customer_details'] = (node) => customerDetails = node.getObjectValue<
            ReportPaymentAttemptInformationalPostRequestBodyCustomerDetails>(
        ReportPaymentAttemptInformationalPostRequestBodyCustomerDetails
            .createFromDiscriminatorValue);
    deserializerMap['description'] = (node) => description =
        node.getObjectValue<
                ReportPaymentAttemptInformationalPostRequestBodyDescription>(
            ReportPaymentAttemptInformationalPostRequestBodyDescription
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap[
        'shipping_details'] = (node) => shippingDetails = node.getObjectValue<
            ReportPaymentAttemptInformationalPostRequestBodyShippingDetails>(
        ReportPaymentAttemptInformationalPostRequestBodyShippingDetails
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ReportPaymentAttemptInformationalPostRequestBodyCustomerDetails>(
        'customer_details', customerDetails);
    writer.writeObjectValue<
            ReportPaymentAttemptInformationalPostRequestBodyDescription>(
        'description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<
            ReportPaymentAttemptInformationalPostRequestBodyShippingDetails>(
        'shipping_details', shippingDetails);
  }
}
