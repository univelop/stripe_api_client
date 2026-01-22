// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_card_fraud_warning_type.dart';

/// auto generated
class IssuingCardFraudWarning implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Timestamp of the most recent fraud warning.
  int? startedAt;

  ///  The type of fraud warning that most recently took place on this card. This field updates with every new fraud warning, so the value changes over time. If populated, cancel and reissue the card.
  IssuingCardFraudWarningType? type_;

  /// Instantiates a new [IssuingCardFraudWarning] and sets the default values.
  IssuingCardFraudWarning() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardFraudWarning createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardFraudWarning();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['started_at'] = (node) => startedAt = node.getIntValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<IssuingCardFraudWarningType>((stringValue) =>
            IssuingCardFraudWarningType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('started_at', startedAt);
    writer.writeEnumValue<IssuingCardFraudWarningType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
