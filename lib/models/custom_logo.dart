// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CustomLogo implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Content type of the Dashboard-only CustomPaymentMethodType logo.
  String? contentType;

  ///  URL of the Dashboard-only CustomPaymentMethodType logo.
  String? url;

  /// Instantiates a new [CustomLogo] and sets the default values.
  CustomLogo() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomLogo createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomLogo();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['content_type'] =
        (node) => contentType = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('content_type', contentType);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
