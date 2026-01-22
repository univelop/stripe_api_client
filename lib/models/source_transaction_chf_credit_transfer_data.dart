// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTransactionChfCreditTransferData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Reference associated with the transfer.
  String? reference;

  ///  Sender's country address.
  String? senderAddressCountry;

  ///  Sender's line 1 address.
  String? senderAddressLine1;

  ///  Sender's bank account IBAN.
  String? senderIban;

  ///  Sender's name.
  String? senderName;

  /// Instantiates a new [SourceTransactionChfCreditTransferData] and sets the default values.
  SourceTransactionChfCreditTransferData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTransactionChfCreditTransferData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceTransactionChfCreditTransferData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['sender_address_country'] =
        (node) => senderAddressCountry = node.getStringValue();
    deserializerMap['sender_address_line1'] =
        (node) => senderAddressLine1 = node.getStringValue();
    deserializerMap['sender_iban'] =
        (node) => senderIban = node.getStringValue();
    deserializerMap['sender_name'] =
        (node) => senderName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('sender_address_country', senderAddressCountry);
    writer.writeStringValue('sender_address_line1', senderAddressLine1);
    writer.writeStringValue('sender_iban', senderIban);
    writer.writeStringValue('sender_name', senderName);
    writer.writeAdditionalData(additionalData);
  }
}
