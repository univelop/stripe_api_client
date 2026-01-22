// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingTransactionTreasury implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The Treasury [ReceivedCredit](https://docs.stripe.com/api/treasury/received_credits) representing this Issuing transaction if it is a refund
  String? receivedCredit;

  ///  The Treasury [ReceivedDebit](https://docs.stripe.com/api/treasury/received_debits) representing this Issuing transaction if it is a capture
  String? receivedDebit;

  /// Instantiates a new [IssuingTransactionTreasury] and sets the default values.
  IssuingTransactionTreasury() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionTreasury createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingTransactionTreasury();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['received_credit'] =
        (node) => receivedCredit = node.getStringValue();
    deserializerMap['received_debit'] =
        (node) => receivedDebit = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('received_credit', receivedCredit);
    writer.writeStringValue('received_debit', receivedDebit);
    writer.writeAdditionalData(additionalData);
  }
}
