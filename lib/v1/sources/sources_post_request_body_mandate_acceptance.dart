// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sources_post_request_body_mandate_acceptance_offline.dart';
import './sources_post_request_body_mandate_acceptance_online.dart';
import './sources_post_request_body_mandate_acceptance_status.dart';
import './sources_post_request_body_mandate_acceptance_type.dart';

/// auto generated
class SourcesPostRequestBodyMandateAcceptance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The date property
  int? date;

  ///  The ip property
  String? ip;

  ///  The offline property
  SourcesPostRequestBodyMandateAcceptanceOffline? offline;

  ///  The online property
  SourcesPostRequestBodyMandateAcceptanceOnline? online;

  ///  The status property
  SourcesPostRequestBodyMandateAcceptanceStatus? status;

  ///  The type property
  SourcesPostRequestBodyMandateAcceptanceType? type_;

  ///  The user_agent property
  String? userAgent;

  /// Instantiates a new [SourcesPostRequestBodyMandateAcceptance] and sets the default values.
  SourcesPostRequestBodyMandateAcceptance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourcesPostRequestBodyMandateAcceptance createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourcesPostRequestBodyMandateAcceptance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['date'] = (node) => date = node.getIntValue();
    deserializerMap['ip'] = (node) => ip = node.getStringValue();
    deserializerMap['offline'] = (node) => offline =
        node.getObjectValue<SourcesPostRequestBodyMandateAcceptanceOffline>(
            SourcesPostRequestBodyMandateAcceptanceOffline
                .createFromDiscriminatorValue);
    deserializerMap['online'] = (node) => online =
        node.getObjectValue<SourcesPostRequestBodyMandateAcceptanceOnline>(
            SourcesPostRequestBodyMandateAcceptanceOnline
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<SourcesPostRequestBodyMandateAcceptanceStatus>(
            (stringValue) => SourcesPostRequestBodyMandateAcceptanceStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SourcesPostRequestBodyMandateAcceptanceType>(
            (stringValue) => SourcesPostRequestBodyMandateAcceptanceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['user_agent'] = (node) => userAgent = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('date', date);
    writer.writeStringValue('ip', ip);
    writer.writeObjectValue<SourcesPostRequestBodyMandateAcceptanceOffline>(
        'offline', offline);
    writer.writeObjectValue<SourcesPostRequestBodyMandateAcceptanceOnline>(
        'online', online);
    writer.writeEnumValue<SourcesPostRequestBodyMandateAcceptanceStatus>(
        'status', status, (e) => e?.value);
    writer.writeEnumValue<SourcesPostRequestBodyMandateAcceptanceType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('user_agent', userAgent);
    writer.writeAdditionalData(additionalData);
  }
}
