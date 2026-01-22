// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_source_post_request_body_mandate_acceptance_offline.dart';
import './with_source_post_request_body_mandate_acceptance_online.dart';
import './with_source_post_request_body_mandate_acceptance_status.dart';
import './with_source_post_request_body_mandate_acceptance_type.dart';

/// auto generated
class WithSourcePostRequestBodyMandateAcceptance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The date property
  int? date;

  ///  The ip property
  String? ip;

  ///  The offline property
  WithSourcePostRequestBodyMandateAcceptanceOffline? offline;

  ///  The online property
  WithSourcePostRequestBodyMandateAcceptanceOnline? online;

  ///  The status property
  WithSourcePostRequestBodyMandateAcceptanceStatus? status;

  ///  The type property
  WithSourcePostRequestBodyMandateAcceptanceType? type_;

  ///  The user_agent property
  String? userAgent;

  /// Instantiates a new [WithSourcePostRequestBodyMandateAcceptance] and sets the default values.
  WithSourcePostRequestBodyMandateAcceptance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSourcePostRequestBodyMandateAcceptance
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSourcePostRequestBodyMandateAcceptance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['date'] = (node) => date = node.getIntValue();
    deserializerMap['ip'] = (node) => ip = node.getStringValue();
    deserializerMap['offline'] = (node) => offline =
        node.getObjectValue<WithSourcePostRequestBodyMandateAcceptanceOffline>(
            WithSourcePostRequestBodyMandateAcceptanceOffline
                .createFromDiscriminatorValue);
    deserializerMap['online'] = (node) => online =
        node.getObjectValue<WithSourcePostRequestBodyMandateAcceptanceOnline>(
            WithSourcePostRequestBodyMandateAcceptanceOnline
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<WithSourcePostRequestBodyMandateAcceptanceStatus>(
            (stringValue) => WithSourcePostRequestBodyMandateAcceptanceStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<WithSourcePostRequestBodyMandateAcceptanceType>(
            (stringValue) => WithSourcePostRequestBodyMandateAcceptanceType
                .values
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
    writer.writeObjectValue<WithSourcePostRequestBodyMandateAcceptanceOffline>(
        'offline', offline);
    writer.writeObjectValue<WithSourcePostRequestBodyMandateAcceptanceOnline>(
        'online', online);
    writer.writeEnumValue<WithSourcePostRequestBodyMandateAcceptanceStatus>(
        'status', status, (e) => e?.value);
    writer.writeEnumValue<WithSourcePostRequestBodyMandateAcceptanceType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('user_agent', userAgent);
    writer.writeAdditionalData(additionalData);
  }
}
