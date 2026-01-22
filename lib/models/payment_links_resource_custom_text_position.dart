// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentLinksResourceCustomTextPosition
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Text may be up to 1200 characters in length.
  String? message;

  /// Instantiates a new [PaymentLinksResourceCustomTextPosition] and sets the default values.
  PaymentLinksResourceCustomTextPosition() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceCustomTextPosition createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceCustomTextPosition();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['message'] = (node) => message = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('message', message);
    writer.writeAdditionalData(additionalData);
  }
}
