// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Timestamp describing when the Transaction changed status to `posted`.
  int? postedAt;

  ///  Timestamp describing when the Transaction changed status to `void`.
  int? voidAt;

  /// Instantiates a new [TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions] and sets the default values.
  TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['posted_at'] = (node) => postedAt = node.getIntValue();
    deserializerMap['void_at'] = (node) => voidAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('posted_at', postedAt);
    writer.writeIntValue('void_at', voidAt);
    writer.writeAdditionalData(additionalData);
  }
}
