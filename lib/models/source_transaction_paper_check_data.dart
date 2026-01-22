// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTransactionPaperCheckData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the deposited funds will be available for use. Measured in seconds since the Unix epoch.
  String? availableAt;

  ///  Comma-separated list of invoice IDs associated with the paper check.
  String? invoices;

  /// Instantiates a new [SourceTransactionPaperCheckData] and sets the default values.
  SourceTransactionPaperCheckData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTransactionPaperCheckData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceTransactionPaperCheckData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['available_at'] =
        (node) => availableAt = node.getStringValue();
    deserializerMap['invoices'] = (node) => invoices = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('available_at', availableAt);
    writer.writeStringValue('invoices', invoices);
    writer.writeAdditionalData(additionalData);
  }
}
