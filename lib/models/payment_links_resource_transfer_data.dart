// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_transfer_data_destination.dart';

/// auto generated
class PaymentLinksResourceTransferData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount in cents (or local equivalent) that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
  int? amount;

  ///  The connected account receiving the transfer.
  PaymentLinksResourceTransferDataDestination? destination;

  /// Instantiates a new [PaymentLinksResourceTransferData] and sets the default values.
  PaymentLinksResourceTransferData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceTransferData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceTransferData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['destination'] = (node) => destination =
        node.getObjectValue<PaymentLinksResourceTransferDataDestination>(
            PaymentLinksResourceTransferDataDestination
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<PaymentLinksResourceTransferDataDestination>(
        'destination', destination);
    writer.writeAdditionalData(additionalData);
  }
}
