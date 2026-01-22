// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_payment_attempt_informational_post_request_body_shipping_details_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1], [String?]
class ReportPaymentAttemptInformationalPostRequestBodyShippingDetails
    implements Parsable {
  ///  Composed type representation for type [ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1]
  ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1?
      reportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentAttemptInformationalPostRequestBodyShippingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        ReportPaymentAttemptInformationalPostRequestBodyShippingDetails();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.reportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1 =
          ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (reportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1 !=
        null) {
      reportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<
              ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1>(
          null,
          reportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1);
    }
  }
}
