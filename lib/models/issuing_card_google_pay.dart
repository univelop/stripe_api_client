// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_card_google_pay_ineligible_reason.dart';

/// auto generated
class IssuingCardGooglePay implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Google Pay Eligibility
  bool? eligible;

  ///  Reason the card is ineligible for Google Pay
  IssuingCardGooglePayIneligibleReason? ineligibleReason;

  /// Instantiates a new [IssuingCardGooglePay] and sets the default values.
  IssuingCardGooglePay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardGooglePay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardGooglePay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['eligible'] = (node) => eligible = node.getBoolValue();
    deserializerMap['ineligible_reason'] = (node) => ineligibleReason =
        node.getEnumValue<IssuingCardGooglePayIneligibleReason>((stringValue) =>
            IssuingCardGooglePayIneligibleReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('eligible', value: eligible);
    writer.writeEnumValue<IssuingCardGooglePayIneligibleReason>(
        'ineligible_reason', ineligibleReason, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
