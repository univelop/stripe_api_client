// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_received_credits_resource_reversal_details_restricted_reason.dart';

/// auto generated
class TreasuryReceivedCreditsResourceReversalDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time before which a ReceivedCredit can be reversed.
  int? deadline;

  ///  Set if a ReceivedCredit cannot be reversed.
  TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason?
      restrictedReason;

  /// Instantiates a new [TreasuryReceivedCreditsResourceReversalDetails] and sets the default values.
  TreasuryReceivedCreditsResourceReversalDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryReceivedCreditsResourceReversalDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryReceivedCreditsResourceReversalDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['deadline'] = (node) => deadline = node.getIntValue();
    deserializerMap['restricted_reason'] = (node) => restrictedReason =
        node.getEnumValue<
                TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason>(
            (stringValue) =>
                TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('deadline', deadline);
    writer.writeEnumValue<
            TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason>(
        'restricted_reason', restrictedReason, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
