// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TreasuryReceivedDebitsResourceStatusTransitions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Timestamp describing when the DebitReversal changed status to `completed`.
  int? completedAt;

  /// Instantiates a new [TreasuryReceivedDebitsResourceStatusTransitions] and sets the default values.
  TreasuryReceivedDebitsResourceStatusTransitions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryReceivedDebitsResourceStatusTransitions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryReceivedDebitsResourceStatusTransitions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['completed_at'] =
        (node) => completedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('completed_at', completedAt);
    writer.writeAdditionalData(additionalData);
  }
}
