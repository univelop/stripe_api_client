// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsAfterpayClearpay
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The Afterpay order ID associated with this payment intent.
  String? orderId;

  ///  Order identifier shown to the merchant in Afterpay’s online portal.
  String? reference;

  /// Instantiates a new [PaymentMethodDetailsAfterpayClearpay] and sets the default values.
  PaymentMethodDetailsAfterpayClearpay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsAfterpayClearpay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsAfterpayClearpay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['order_id'] = (node) => orderId = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('order_id', orderId);
    writer.writeStringValue('reference', reference);
    writer.writeAdditionalData(additionalData);
  }
}
