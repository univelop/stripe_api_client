// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeAlipay implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The data_string property
  String? dataString;

  ///  The native_url property
  String? nativeUrl;

  ///  The statement_descriptor property
  String? statementDescriptor;

  /// Instantiates a new [SourceTypeAlipay] and sets the default values.
  SourceTypeAlipay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeAlipay createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceTypeAlipay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data_string'] =
        (node) => dataString = node.getStringValue();
    deserializerMap['native_url'] = (node) => nativeUrl = node.getStringValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('data_string', dataString);
    writer.writeStringValue('native_url', nativeUrl);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeAdditionalData(additionalData);
  }
}
