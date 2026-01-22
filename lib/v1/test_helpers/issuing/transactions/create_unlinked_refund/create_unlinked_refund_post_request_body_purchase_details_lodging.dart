// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CreateUnlinkedRefundPostRequestBodyPurchaseDetailsLodging
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The check_in_at property
  int? checkInAt;

  ///  The nights property
  int? nights;

  /// Instantiates a new [CreateUnlinkedRefundPostRequestBodyPurchaseDetailsLodging] and sets the default values.
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsLodging()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateUnlinkedRefundPostRequestBodyPurchaseDetailsLodging
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreateUnlinkedRefundPostRequestBodyPurchaseDetailsLodging();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['check_in_at'] = (node) => checkInAt = node.getIntValue();
    deserializerMap['nights'] = (node) => nights = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('check_in_at', checkInAt);
    writer.writeIntValue('nights', nights);
    writer.writeAdditionalData(additionalData);
  }
}
