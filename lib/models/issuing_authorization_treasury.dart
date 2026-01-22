// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingAuthorizationTreasury implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The array of [ReceivedCredits](https://docs.stripe.com/api/treasury/received_credits) associated with this authorization
  Iterable<String>? receivedCredits;

  ///  The array of [ReceivedDebits](https://docs.stripe.com/api/treasury/received_debits) associated with this authorization
  Iterable<String>? receivedDebits;

  ///  The Treasury [Transaction](https://docs.stripe.com/api/treasury/transactions) associated with this authorization
  String? transaction;

  /// Instantiates a new [IssuingAuthorizationTreasury] and sets the default values.
  IssuingAuthorizationTreasury() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationTreasury createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationTreasury();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['received_credits'] = (node) =>
        receivedCredits = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['received_debits'] = (node) =>
        receivedDebits = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['transaction'] =
        (node) => transaction = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>(
        'received_credits', receivedCredits);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'received_debits', receivedDebits);
    writer.writeStringValue('transaction', transaction);
    writer.writeAdditionalData(additionalData);
  }
}
