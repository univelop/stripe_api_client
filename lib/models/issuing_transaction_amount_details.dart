// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingTransactionAmountDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fee charged by the ATM for the cash withdrawal.
  int? atmFee;

  ///  The amount of cash requested by the cardholder.
  int? cashbackAmount;

  /// Instantiates a new [IssuingTransactionAmountDetails] and sets the default values.
  IssuingTransactionAmountDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionAmountDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingTransactionAmountDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['atm_fee'] = (node) => atmFee = node.getIntValue();
    deserializerMap['cashback_amount'] =
        (node) => cashbackAmount = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('atm_fee', atmFee);
    writer.writeIntValue('cashback_amount', cashbackAmount);
    writer.writeAdditionalData(additionalData);
  }
}
