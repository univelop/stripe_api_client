// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_mandate_data_member1_customer_acceptance_offline.dart';
import './confirm_post_request_body_mandate_data_member1_customer_acceptance_online.dart';
import './confirm_post_request_body_mandate_data_member1_customer_acceptance_type.dart';

/// auto generated
class ConfirmPostRequestBodyMandateDataMember1CustomerAcceptance
    implements AdditionalDataHolder, Parsable {
  ///  The accepted_at property
  int? acceptedAt;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The offline property
  ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceOffline? offline;

  ///  The online property
  ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceOnline? online;

  ///  The type property
  ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceType? type_;

  /// Instantiates a new [ConfirmPostRequestBodyMandateDataMember1CustomerAcceptance] and sets the default values.
  ConfirmPostRequestBodyMandateDataMember1CustomerAcceptance()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyMandateDataMember1CustomerAcceptance
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyMandateDataMember1CustomerAcceptance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['accepted_at'] = (node) => acceptedAt = node.getIntValue();
    deserializerMap['offline'] = (node) => offline = node.getObjectValue<
            ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceOffline>(
        ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceOffline
            .createFromDiscriminatorValue);
    deserializerMap['online'] = (node) => online = node.getObjectValue<
            ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceOnline>(
        ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceOnline
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceType>(
        (stringValue) =>
            ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('accepted_at', acceptedAt);
    writer.writeObjectValue<
            ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceOffline>(
        'offline', offline);
    writer.writeObjectValue<
            ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceOnline>(
        'online', online);
    writer.writeEnumValue<
            ConfirmPostRequestBodyMandateDataMember1CustomerAcceptanceType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
