// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_schedule_post_request_body_default_settings_automatic_tax_liability_type.dart';

/// auto generated
class WithSchedulePostRequestBodyDefaultSettingsAutomaticTaxLiability
    implements AdditionalDataHolder, Parsable {
  ///  The account property
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  WithSchedulePostRequestBodyDefaultSettingsAutomaticTaxLiabilityType? type_;

  /// Instantiates a new [WithSchedulePostRequestBodyDefaultSettingsAutomaticTaxLiability] and sets the default values.
  WithSchedulePostRequestBodyDefaultSettingsAutomaticTaxLiability()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBodyDefaultSettingsAutomaticTaxLiability
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSchedulePostRequestBodyDefaultSettingsAutomaticTaxLiability();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            WithSchedulePostRequestBodyDefaultSettingsAutomaticTaxLiabilityType>(
        (stringValue) =>
            WithSchedulePostRequestBodyDefaultSettingsAutomaticTaxLiabilityType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeEnumValue<
            WithSchedulePostRequestBodyDefaultSettingsAutomaticTaxLiabilityType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
