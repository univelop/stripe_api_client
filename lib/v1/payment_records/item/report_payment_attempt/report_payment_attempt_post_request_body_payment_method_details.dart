// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_payment_attempt_post_request_body_payment_method_details_billing_details.dart';
import './report_payment_attempt_post_request_body_payment_method_details_custom.dart';
import './report_payment_attempt_post_request_body_payment_method_details_type.dart';

/// auto generated
/// Information about the Payment Method debited for this payment.
class ReportPaymentAttemptPostRequestBodyPaymentMethodDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_details property
  ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetails?
      billingDetails;

  ///  The custom property
  ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsCustom? custom;

  ///  The payment_method property
  String? paymentMethod;

  ///  The type property
  ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsType? type_;

  /// Instantiates a new [ReportPaymentAttemptPostRequestBodyPaymentMethodDetails] and sets the default values.
  ReportPaymentAttemptPostRequestBodyPaymentMethodDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentAttemptPostRequestBodyPaymentMethodDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportPaymentAttemptPostRequestBodyPaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'billing_details'] = (node) => billingDetails = node.getObjectValue<
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetails>(
        ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetails
            .createFromDiscriminatorValue);
    deserializerMap['custom'] = (node) => custom = node.getObjectValue<
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsCustom>(
        ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsCustom
            .createFromDiscriminatorValue);
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsType>(
        (stringValue) =>
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsBillingDetails>(
        'billing_details', billingDetails);
    writer.writeObjectValue<
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsCustom>(
        'custom', custom);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeEnumValue<
            ReportPaymentAttemptPostRequestBodyPaymentMethodDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
