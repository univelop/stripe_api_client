// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_amount_details_tax_member1.dart';

/// auto generated
/// Composed type wrapper for classes [CapturePostRequestBodyAmountDetailsTaxMember1], [String?]
class CapturePostRequestBodyAmountDetailsTax implements Parsable {
  ///  Composed type representation for type [CapturePostRequestBodyAmountDetailsTaxMember1]
  CapturePostRequestBodyAmountDetailsTaxMember1?
      capturePostRequestBodyAmountDetailsTaxMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyAmountDetailsTax createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = CapturePostRequestBodyAmountDetailsTax();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.capturePostRequestBodyAmountDetailsTaxMember1 =
          CapturePostRequestBodyAmountDetailsTaxMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (capturePostRequestBodyAmountDetailsTaxMember1 != null) {
      capturePostRequestBodyAmountDetailsTaxMember1!
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
      writer.writeObjectValue<CapturePostRequestBodyAmountDetailsTaxMember1>(
          null, capturePostRequestBodyAmountDetailsTaxMember1);
    }
  }
}
