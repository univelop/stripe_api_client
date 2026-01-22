// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Clone an existing quote. The new quote will be created in `status=draft`. When using this parameter, you cannot specify any other parameters except for `expires_at`.
class QuotesPostRequestBodyFromQuote implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The is_revision property
  bool? isRevision;

  ///  The quote property
  String? quote;

  /// Instantiates a new [QuotesPostRequestBodyFromQuote] and sets the default values.
  QuotesPostRequestBodyFromQuote() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBodyFromQuote createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesPostRequestBodyFromQuote();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['is_revision'] = (node) => isRevision = node.getBoolValue();
    deserializerMap['quote'] = (node) => quote = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('is_revision', value: isRevision);
    writer.writeStringValue('quote', quote);
    writer.writeAdditionalData(additionalData);
  }
}
