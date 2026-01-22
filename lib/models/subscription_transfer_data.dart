// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_transfer_data_destination.dart';

/// auto generated
class SubscriptionTransferData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
  double? amountPercent;

  ///  The account where funds from the payment will be transferred to upon payment success.
  SubscriptionTransferDataDestination? destination;

  /// Instantiates a new [SubscriptionTransferData] and sets the default values.
  SubscriptionTransferData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionTransferData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionTransferData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_percent'] =
        (node) => amountPercent = node.getDoubleValue();
    deserializerMap['destination'] = (node) => destination =
        node.getObjectValue<SubscriptionTransferDataDestination>(
            SubscriptionTransferDataDestination.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeDoubleValue('amount_percent', amountPercent);
    writer.writeObjectValue<SubscriptionTransferDataDestination>(
        'destination', destination);
    writer.writeAdditionalData(additionalData);
  }
}
