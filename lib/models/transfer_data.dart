// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transfer_data_destination.dart';

/// auto generated
class TransferData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount transferred to the destination account. This transfer will occur automatically after the payment succeeds. If no amount is specified, by default the entire payment amount is transferred to the destination account. The amount must be less than or equal to the [amount](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-amount), and must be a positive integer representing how much to transfer in the smallest currency unit (e.g., 100 cents to charge $1.00).
  int? amount;

  ///  The account (if any) that the payment is attributed to for tax reporting, and where funds from the payment are transferred to after payment success.
  TransferDataDestination? destination;

  /// Instantiates a new [TransferData] and sets the default values.
  TransferData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TransferData createFromDiscriminatorValue(ParseNode parseNode) {
    return TransferData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['destination'] = (node) => destination =
        node.getObjectValue<TransferDataDestination>(
            TransferDataDestination.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<TransferDataDestination>(
        'destination', destination);
    writer.writeAdditionalData(additionalData);
  }
}
