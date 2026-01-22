// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TreasuryReceivedDebitsResourceDebitReversalLinkedFlows
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Set if there is an Issuing dispute associated with the DebitReversal.
  String? issuingDispute;

  /// Instantiates a new [TreasuryReceivedDebitsResourceDebitReversalLinkedFlows] and sets the default values.
  TreasuryReceivedDebitsResourceDebitReversalLinkedFlows()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryReceivedDebitsResourceDebitReversalLinkedFlows
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryReceivedDebitsResourceDebitReversalLinkedFlows();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['issuing_dispute'] =
        (node) => issuingDispute = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('issuing_dispute', issuingDispute);
    writer.writeAdditionalData(additionalData);
  }
}
