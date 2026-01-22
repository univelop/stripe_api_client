// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class QuotesResourceStatusTransitions
    implements AdditionalDataHolder, Parsable {
  ///  The time that the quote was accepted. Measured in seconds since Unix epoch.
  int? acceptedAt;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The time that the quote was canceled. Measured in seconds since Unix epoch.
  int? canceledAt;

  ///  The time that the quote was finalized. Measured in seconds since Unix epoch.
  int? finalizedAt;

  /// Instantiates a new [QuotesResourceStatusTransitions] and sets the default values.
  QuotesResourceStatusTransitions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesResourceStatusTransitions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesResourceStatusTransitions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['accepted_at'] = (node) => acceptedAt = node.getIntValue();
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getIntValue();
    deserializerMap['finalized_at'] =
        (node) => finalizedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('accepted_at', acceptedAt);
    writer.writeIntValue('canceled_at', canceledAt);
    writer.writeIntValue('finalized_at', finalizedAt);
    writer.writeAdditionalData(additionalData);
  }
}
