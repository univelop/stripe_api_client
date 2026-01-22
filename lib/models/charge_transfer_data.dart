// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './charge_transfer_data_destination.dart';

/// auto generated
class ChargeTransferData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
  int? amount;

  ///  ID of an existing, connected Stripe account to transfer funds to if `transfer_data` was specified in the charge request.
  ChargeTransferDataDestination? destination;

  /// Instantiates a new [ChargeTransferData] and sets the default values.
  ChargeTransferData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ChargeTransferData createFromDiscriminatorValue(ParseNode parseNode) {
    return ChargeTransferData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['destination'] = (node) => destination =
        node.getObjectValue<ChargeTransferDataDestination>(
            ChargeTransferDataDestination.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<ChargeTransferDataDestination>(
        'destination', destination);
    writer.writeAdditionalData(additionalData);
  }
}
