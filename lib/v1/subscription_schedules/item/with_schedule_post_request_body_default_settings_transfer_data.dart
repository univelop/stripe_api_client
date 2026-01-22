// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_schedule_post_request_body_default_settings_transfer_data_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithSchedulePostRequestBodyDefaultSettingsTransferDataMember1]
class WithSchedulePostRequestBodyDefaultSettingsTransferData
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithSchedulePostRequestBodyDefaultSettingsTransferDataMember1]
  WithSchedulePostRequestBodyDefaultSettingsTransferDataMember1?
      withSchedulePostRequestBodyDefaultSettingsTransferDataMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBodyDefaultSettingsTransferData
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithSchedulePostRequestBodyDefaultSettingsTransferData();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withSchedulePostRequestBodyDefaultSettingsTransferDataMember1 =
          WithSchedulePostRequestBodyDefaultSettingsTransferDataMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withSchedulePostRequestBodyDefaultSettingsTransferDataMember1 != null) {
      withSchedulePostRequestBodyDefaultSettingsTransferDataMember1!
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
              WithSchedulePostRequestBodyDefaultSettingsTransferDataMember1>(
          null, withSchedulePostRequestBodyDefaultSettingsTransferDataMember1);
    }
  }
}
