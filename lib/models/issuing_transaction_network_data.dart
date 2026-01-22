// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingTransactionNetworkData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter "S", followed by a six-digit number. For example, "S498162". Please note that the code is not guaranteed to be unique across authorizations.
  String? authorizationCode;

  ///  The date the transaction was processed by the card network. This can be different from the date the seller recorded the transaction depending on when the acquirer submits the transaction to the network.
  String? processingDate;

  ///  Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
  String? transactionId;

  /// Instantiates a new [IssuingTransactionNetworkData] and sets the default values.
  IssuingTransactionNetworkData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionNetworkData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingTransactionNetworkData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['authorization_code'] =
        (node) => authorizationCode = node.getStringValue();
    deserializerMap['processing_date'] =
        (node) => processingDate = node.getStringValue();
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('authorization_code', authorizationCode);
    writer.writeStringValue('processing_date', processingDate);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeAdditionalData(additionalData);
  }
}
