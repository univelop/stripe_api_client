// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_resource_from_quote_quote.dart';

/// auto generated
class QuotesResourceFromQuote implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether this quote is a revision of a different quote.
  bool? isRevision;

  ///  The quote that was cloned.
  QuotesResourceFromQuoteQuote? quote;

  /// Instantiates a new [QuotesResourceFromQuote] and sets the default values.
  QuotesResourceFromQuote() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesResourceFromQuote createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesResourceFromQuote();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['is_revision'] = (node) => isRevision = node.getBoolValue();
    deserializerMap['quote'] = (node) => quote =
        node.getObjectValue<QuotesResourceFromQuoteQuote>(
            QuotesResourceFromQuoteQuote.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('is_revision', value: isRevision);
    writer.writeObjectValue<QuotesResourceFromQuoteQuote>('quote', quote);
    writer.writeAdditionalData(additionalData);
  }
}
