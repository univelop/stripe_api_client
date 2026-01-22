// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_payment_details_member1.dart';

/// auto generated
/// Composed type wrapper for classes [CapturePostRequestBodyPaymentDetailsMember1], [String?]
class CapturePostRequestBodyPaymentDetails implements Parsable {
  ///  Composed type representation for type [CapturePostRequestBodyPaymentDetailsMember1]
  CapturePostRequestBodyPaymentDetailsMember1?
      capturePostRequestBodyPaymentDetailsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyPaymentDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = CapturePostRequestBodyPaymentDetails();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.capturePostRequestBodyPaymentDetailsMember1 =
          CapturePostRequestBodyPaymentDetailsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (capturePostRequestBodyPaymentDetailsMember1 != null) {
      capturePostRequestBodyPaymentDetailsMember1!
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
      writer.writeObjectValue<CapturePostRequestBodyPaymentDetailsMember1>(
          null, capturePostRequestBodyPaymentDetailsMember1);
    }
  }
}
