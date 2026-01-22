// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_mandate_data_member2_customer_acceptance_online.dart';
import './confirm_post_request_body_mandate_data_member2_customer_acceptance_type.dart';

/// auto generated
class ConfirmPostRequestBodyMandateDataMember2CustomerAcceptance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The online property
  ConfirmPostRequestBodyMandateDataMember2CustomerAcceptanceOnline? online;

  ///  The type property
  ConfirmPostRequestBodyMandateDataMember2CustomerAcceptanceType? type_;

  /// Instantiates a new [ConfirmPostRequestBodyMandateDataMember2CustomerAcceptance] and sets the default values.
  ConfirmPostRequestBodyMandateDataMember2CustomerAcceptance()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyMandateDataMember2CustomerAcceptance
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyMandateDataMember2CustomerAcceptance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['online'] = (node) => online = node.getObjectValue<
            ConfirmPostRequestBodyMandateDataMember2CustomerAcceptanceOnline>(
        ConfirmPostRequestBodyMandateDataMember2CustomerAcceptanceOnline
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            ConfirmPostRequestBodyMandateDataMember2CustomerAcceptanceType>(
        (stringValue) =>
            ConfirmPostRequestBodyMandateDataMember2CustomerAcceptanceType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyMandateDataMember2CustomerAcceptanceOnline>(
        'online', online);
    writer.writeEnumValue<
            ConfirmPostRequestBodyMandateDataMember2CustomerAcceptanceType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
