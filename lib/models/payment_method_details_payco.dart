// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsPayco implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A unique identifier for the buyer as determined by the local payment processor.
  String? buyerId;

  ///  The Payco transaction ID associated with this payment.
  String? transactionId;

  /// Instantiates a new [PaymentMethodDetailsPayco] and sets the default values.
  PaymentMethodDetailsPayco() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsPayco createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsPayco();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['buyer_id'] = (node) => buyerId = node.getStringValue();
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('buyer_id', buyerId);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeAdditionalData(additionalData);
  }
}
