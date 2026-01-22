// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class InvoicesResourceStatusTransitions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The time that the invoice draft was finalized.
  int? finalizedAt;

  ///  The time that the invoice was marked uncollectible.
  int? markedUncollectibleAt;

  ///  The time that the invoice was paid.
  int? paidAt;

  ///  The time that the invoice was voided.
  int? voidedAt;

  /// Instantiates a new [InvoicesResourceStatusTransitions] and sets the default values.
  InvoicesResourceStatusTransitions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesResourceStatusTransitions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesResourceStatusTransitions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['finalized_at'] =
        (node) => finalizedAt = node.getIntValue();
    deserializerMap['marked_uncollectible_at'] =
        (node) => markedUncollectibleAt = node.getIntValue();
    deserializerMap['paid_at'] = (node) => paidAt = node.getIntValue();
    deserializerMap['voided_at'] = (node) => voidedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('finalized_at', finalizedAt);
    writer.writeIntValue('marked_uncollectible_at', markedUncollectibleAt);
    writer.writeIntValue('paid_at', paidAt);
    writer.writeIntValue('voided_at', voidedAt);
    writer.writeAdditionalData(additionalData);
  }
}
