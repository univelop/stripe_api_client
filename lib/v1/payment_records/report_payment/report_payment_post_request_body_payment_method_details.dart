// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_payment_post_request_body_payment_method_details_billing_details.dart';
import './report_payment_post_request_body_payment_method_details_custom.dart';
import './report_payment_post_request_body_payment_method_details_type.dart';

/// auto generated
/// Information about the Payment Method debited for this payment.
class ReportPaymentPostRequestBodyPaymentMethodDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_details property
  ReportPaymentPostRequestBodyPaymentMethodDetailsBillingDetails?
      billingDetails;

  ///  The custom property
  ReportPaymentPostRequestBodyPaymentMethodDetailsCustom? custom;

  ///  The payment_method property
  String? paymentMethod;

  ///  The type property
  ReportPaymentPostRequestBodyPaymentMethodDetailsType? type_;

  /// Instantiates a new [ReportPaymentPostRequestBodyPaymentMethodDetails] and sets the default values.
  ReportPaymentPostRequestBodyPaymentMethodDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentPostRequestBodyPaymentMethodDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportPaymentPostRequestBodyPaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<
                ReportPaymentPostRequestBodyPaymentMethodDetailsBillingDetails>(
            ReportPaymentPostRequestBodyPaymentMethodDetailsBillingDetails
                .createFromDiscriminatorValue);
    deserializerMap['custom'] = (node) => custom = node
        .getObjectValue<ReportPaymentPostRequestBodyPaymentMethodDetailsCustom>(
            ReportPaymentPostRequestBodyPaymentMethodDetailsCustom
                .createFromDiscriminatorValue);
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<ReportPaymentPostRequestBodyPaymentMethodDetailsType>(
            (stringValue) =>
                ReportPaymentPostRequestBodyPaymentMethodDetailsType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ReportPaymentPostRequestBodyPaymentMethodDetailsBillingDetails>(
        'billing_details', billingDetails);
    writer.writeObjectValue<
            ReportPaymentPostRequestBodyPaymentMethodDetailsCustom>(
        'custom', custom);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeEnumValue<ReportPaymentPostRequestBodyPaymentMethodDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
