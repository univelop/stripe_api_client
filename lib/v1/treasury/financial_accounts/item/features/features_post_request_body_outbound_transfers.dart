// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './features_post_request_body_outbound_transfers_ach.dart';
import './features_post_request_body_outbound_transfers_us_domestic_wire.dart';

/// auto generated
/// Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
class FeaturesPostRequestBodyOutboundTransfers
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  FeaturesPostRequestBodyOutboundTransfersAch? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The us_domestic_wire property
  FeaturesPostRequestBodyOutboundTransfersUsDomesticWire? usDomesticWire;

  /// Instantiates a new [FeaturesPostRequestBodyOutboundTransfers] and sets the default values.
  FeaturesPostRequestBodyOutboundTransfers() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FeaturesPostRequestBodyOutboundTransfers createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FeaturesPostRequestBodyOutboundTransfers();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach =
        node.getObjectValue<FeaturesPostRequestBodyOutboundTransfersAch>(
            FeaturesPostRequestBodyOutboundTransfersAch
                .createFromDiscriminatorValue);
    deserializerMap['us_domestic_wire'] = (node) => usDomesticWire = node
        .getObjectValue<FeaturesPostRequestBodyOutboundTransfersUsDomesticWire>(
            FeaturesPostRequestBodyOutboundTransfersUsDomesticWire
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<FeaturesPostRequestBodyOutboundTransfersAch>(
        'ach', ach);
    writer.writeObjectValue<
            FeaturesPostRequestBodyOutboundTransfersUsDomesticWire>(
        'us_domestic_wire', usDomesticWire);
    writer.writeAdditionalData(additionalData);
  }
}
