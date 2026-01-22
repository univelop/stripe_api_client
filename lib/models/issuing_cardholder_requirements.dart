// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_cardholder_requirements_disabled_reason.dart';
import './issuing_cardholder_requirements_past_due.dart';

/// auto generated
class IssuingCardholderRequirements implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If `disabled_reason` is present, all cards will decline authorizations with `cardholder_verification_required` reason.
  IssuingCardholderRequirementsDisabledReason? disabledReason;

  ///  Array of fields that need to be collected in order to verify and re-enable the cardholder.
  Iterable<IssuingCardholderRequirementsPastDue>? pastDue;

  /// Instantiates a new [IssuingCardholderRequirements] and sets the default values.
  IssuingCardholderRequirements() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardholderRequirements createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardholderRequirements();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['disabled_reason'] = (node) => disabledReason =
        node.getEnumValue<IssuingCardholderRequirementsDisabledReason>(
            (stringValue) => IssuingCardholderRequirementsDisabledReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['past_due'] = (node) => pastDue =
        node.getCollectionOfEnumValues<IssuingCardholderRequirementsPastDue>(
            (stringValue) => IssuingCardholderRequirementsPastDue.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<IssuingCardholderRequirementsDisabledReason>(
        'disabled_reason', disabledReason, (e) => e?.value);
    writer.writeCollectionOfEnumValues<IssuingCardholderRequirementsPastDue>(
        'past_due', pastDue, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
