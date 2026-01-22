// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsAffirm implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the [location](https://docs.stripe.com/api/terminal/locations) that this transaction's reader is assigned to.
  String? location;

  ///  ID of the [reader](https://docs.stripe.com/api/terminal/readers) this transaction was made on.
  String? reader;

  ///  The Affirm transaction ID associated with this payment.
  String? transactionId;

  /// Instantiates a new [PaymentMethodDetailsAffirm] and sets the default values.
  PaymentMethodDetailsAffirm() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsAffirm createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsAffirm();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['location'] = (node) => location = node.getStringValue();
    deserializerMap['reader'] = (node) => reader = node.getStringValue();
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('location', location);
    writer.writeStringValue('reader', reader);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeAdditionalData(additionalData);
  }
}
