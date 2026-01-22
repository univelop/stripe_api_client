// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class UpdateLinesPostRequestBodyLinesPricing
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The price property
  String? price;

  /// Instantiates a new [UpdateLinesPostRequestBodyLinesPricing] and sets the default values.
  UpdateLinesPostRequestBodyLinesPricing() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static UpdateLinesPostRequestBodyLinesPricing createFromDiscriminatorValue(
      ParseNode parseNode) {
    return UpdateLinesPostRequestBodyLinesPricing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['price'] = (node) => price = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('price', price);
    writer.writeAdditionalData(additionalData);
  }
}
