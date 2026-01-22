// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTransactionGbpCreditTransferData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Bank account fingerprint associated with the Stripe owned bank account receiving the transfer.
  String? fingerprint;

  ///  The credit transfer rails the sender used to push this transfer. The possible rails are: Faster Payments, BACS, CHAPS, and wire transfers. Currently only Faster Payments is supported.
  String? fundingMethod;

  ///  Last 4 digits of sender account number associated with the transfer.
  String? last4;

  ///  Sender entered arbitrary information about the transfer.
  String? reference;

  ///  Sender account number associated with the transfer.
  String? senderAccountNumber;

  ///  Sender name associated with the transfer.
  String? senderName;

  ///  Sender sort code associated with the transfer.
  String? senderSortCode;

  /// Instantiates a new [SourceTransactionGbpCreditTransferData] and sets the default values.
  SourceTransactionGbpCreditTransferData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTransactionGbpCreditTransferData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceTransactionGbpCreditTransferData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['funding_method'] =
        (node) => fundingMethod = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['sender_account_number'] =
        (node) => senderAccountNumber = node.getStringValue();
    deserializerMap['sender_name'] =
        (node) => senderName = node.getStringValue();
    deserializerMap['sender_sort_code'] =
        (node) => senderSortCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('funding_method', fundingMethod);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('sender_account_number', senderAccountNumber);
    writer.writeStringValue('sender_name', senderName);
    writer.writeStringValue('sender_sort_code', senderSortCode);
    writer.writeAdditionalData(additionalData);
  }
}
