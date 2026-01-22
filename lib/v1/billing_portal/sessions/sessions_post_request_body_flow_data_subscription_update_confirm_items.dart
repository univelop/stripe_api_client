// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The id property
  String? id;

  ///  The price property
  String? price;

  ///  The quantity property
  int? quantity;

  /// Instantiates a new [SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmItems] and sets the default values.
  SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmItems()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyFlowDataSubscriptionUpdateConfirmItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeStringValue('price', price);
    writer.writeIntValue('quantity', quantity);
    writer.writeAdditionalData(additionalData);
  }
}
