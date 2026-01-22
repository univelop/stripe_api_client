// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_mandate_data_member1_customer_acceptance_offline.dart';
import './setup_intents_post_request_body_mandate_data_member1_customer_acceptance_online.dart';
import './setup_intents_post_request_body_mandate_data_member1_customer_acceptance_type.dart';

/// auto generated
class SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptance
    implements AdditionalDataHolder, Parsable {
  ///  The accepted_at property
  int? acceptedAt;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The offline property
  SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOffline?
      offline;

  ///  The online property
  SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOnline? online;

  ///  The type property
  SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceType? type_;

  /// Instantiates a new [SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptance] and sets the default values.
  SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptance()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptance
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['accepted_at'] = (node) => acceptedAt = node.getIntValue();
    deserializerMap['offline'] = (node) => offline = node.getObjectValue<
            SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOffline>(
        SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOffline
            .createFromDiscriminatorValue);
    deserializerMap['online'] = (node) => online = node.getObjectValue<
            SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOnline>(
        SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOnline
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceType>(
        (stringValue) =>
            SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceType
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
            SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOffline>(
        'offline', offline);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOnline>(
        'online', online);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
