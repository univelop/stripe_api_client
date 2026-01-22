// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_default_settings_transfer_data_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferDataMember1]
class SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferData
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferDataMember1]
  SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferDataMember1?
      subscriptionSchedulesPostRequestBodyDefaultSettingsTransferDataMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferData
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferData();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.subscriptionSchedulesPostRequestBodyDefaultSettingsTransferDataMember1 =
          SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferDataMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (subscriptionSchedulesPostRequestBodyDefaultSettingsTransferDataMember1 !=
        null) {
      subscriptionSchedulesPostRequestBodyDefaultSettingsTransferDataMember1!
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
              SubscriptionSchedulesPostRequestBodyDefaultSettingsTransferDataMember1>(
          null,
          subscriptionSchedulesPostRequestBodyDefaultSettingsTransferDataMember1);
    }
  }
}
