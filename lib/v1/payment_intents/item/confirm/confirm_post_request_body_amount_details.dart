// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_amount_details_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyAmountDetailsMember1], [String?]
class ConfirmPostRequestBodyAmountDetails implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyAmountDetailsMember1]
  ConfirmPostRequestBodyAmountDetailsMember1?
      confirmPostRequestBodyAmountDetailsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyAmountDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = ConfirmPostRequestBodyAmountDetails();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyAmountDetailsMember1 =
          ConfirmPostRequestBodyAmountDetailsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyAmountDetailsMember1 != null) {
      confirmPostRequestBodyAmountDetailsMember1!
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
      writer.writeObjectValue<ConfirmPostRequestBodyAmountDetailsMember1>(
          null, confirmPostRequestBodyAmountDetailsMember1);
    }
  }
}
