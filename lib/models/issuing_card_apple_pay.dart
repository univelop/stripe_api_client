// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_card_apple_pay_ineligible_reason.dart';

/// auto generated
class IssuingCardApplePay implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Apple Pay Eligibility
  bool? eligible;

  ///  Reason the card is ineligible for Apple Pay
  IssuingCardApplePayIneligibleReason? ineligibleReason;

  /// Instantiates a new [IssuingCardApplePay] and sets the default values.
  IssuingCardApplePay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardApplePay createFromDiscriminatorValue(ParseNode parseNode) {
    return IssuingCardApplePay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['eligible'] = (node) => eligible = node.getBoolValue();
    deserializerMap['ineligible_reason'] = (node) => ineligibleReason =
        node.getEnumValue<IssuingCardApplePayIneligibleReason>((stringValue) =>
            IssuingCardApplePayIneligibleReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('eligible', value: eligible);
    writer.writeEnumValue<IssuingCardApplePayIneligibleReason>(
        'ineligible_reason', ineligibleReason, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
