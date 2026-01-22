// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './features_post_request_body_inbound_transfers_ach.dart';

/// auto generated
/// Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
class FeaturesPostRequestBodyInboundTransfers
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  FeaturesPostRequestBodyInboundTransfersAch? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [FeaturesPostRequestBodyInboundTransfers] and sets the default values.
  FeaturesPostRequestBodyInboundTransfers() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FeaturesPostRequestBodyInboundTransfers createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FeaturesPostRequestBodyInboundTransfers();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach =
        node.getObjectValue<FeaturesPostRequestBodyInboundTransfersAch>(
            FeaturesPostRequestBodyInboundTransfersAch
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<FeaturesPostRequestBodyInboundTransfersAch>(
        'ach', ach);
    writer.writeAdditionalData(additionalData);
  }
}
