// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Params for disputes related to Treasury FinancialAccounts
class DisputesPostRequestBodyTreasury
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The received_debit property
  String? receivedDebit;

  /// Instantiates a new [DisputesPostRequestBodyTreasury] and sets the default values.
  DisputesPostRequestBodyTreasury() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyTreasury createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputesPostRequestBodyTreasury();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['received_debit'] =
        (node) => receivedDebit = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('received_debit', receivedDebit);
    writer.writeAdditionalData(additionalData);
  }
}
