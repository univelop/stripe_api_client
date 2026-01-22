// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_mandate_data_member1.dart';
import './confirm_post_request_body_mandate_data_member2.dart';

/// auto generated
/// Composed type wrapper for classes [ConfirmPostRequestBodyMandateDataMember1], [ConfirmPostRequestBodyMandateDataMember2], [String?]
class ConfirmPostRequestBodyMandateData implements Parsable {
  ///  Composed type representation for type [ConfirmPostRequestBodyMandateDataMember1]
  ConfirmPostRequestBodyMandateDataMember1?
      confirmPostRequestBodyMandateDataMember1;

  ///  Composed type representation for type [ConfirmPostRequestBodyMandateDataMember2]
  ConfirmPostRequestBodyMandateDataMember2?
      confirmPostRequestBodyMandateDataMember2;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyMandateData createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = ConfirmPostRequestBodyMandateData();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.confirmPostRequestBodyMandateDataMember1 =
          ConfirmPostRequestBodyMandateDataMember1();
      result.confirmPostRequestBodyMandateDataMember2 =
          ConfirmPostRequestBodyMandateDataMember2();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (confirmPostRequestBodyMandateDataMember1 != null) {
      confirmPostRequestBodyMandateDataMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (confirmPostRequestBodyMandateDataMember2 != null) {
      confirmPostRequestBodyMandateDataMember2!
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
      writer.writeObjectValue<ConfirmPostRequestBodyMandateDataMember1>(
          null,
          confirmPostRequestBodyMandateDataMember1,
          [confirmPostRequestBodyMandateDataMember2]);
    }
  }
}
