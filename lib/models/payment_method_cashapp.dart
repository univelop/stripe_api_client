// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodCashapp implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A unique and immutable identifier assigned by Cash App to every buyer.
  String? buyerId;

  ///  A public identifier for buyers using Cash App.
  String? cashtag;

  /// Instantiates a new [PaymentMethodCashapp] and sets the default values.
  PaymentMethodCashapp() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodCashapp createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodCashapp();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['buyer_id'] = (node) => buyerId = node.getStringValue();
    deserializerMap['cashtag'] = (node) => cashtag = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('buyer_id', buyerId);
    writer.writeStringValue('cashtag', cashtag);
    writer.writeAdditionalData(additionalData);
  }
}
