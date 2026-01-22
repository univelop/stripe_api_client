// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_financial_account_post_request_body_features_outbound_transfers_ach.dart';
import './with_financial_account_post_request_body_features_outbound_transfers_us_domestic_wire.dart';

/// auto generated
class WithFinancialAccountPostRequestBodyFeaturesOutboundTransfers
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  WithFinancialAccountPostRequestBodyFeaturesOutboundTransfersAch? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The us_domestic_wire property
  WithFinancialAccountPostRequestBodyFeaturesOutboundTransfersUsDomesticWire?
      usDomesticWire;

  /// Instantiates a new [WithFinancialAccountPostRequestBodyFeaturesOutboundTransfers] and sets the default values.
  WithFinancialAccountPostRequestBodyFeaturesOutboundTransfers()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithFinancialAccountPostRequestBodyFeaturesOutboundTransfers
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithFinancialAccountPostRequestBodyFeaturesOutboundTransfers();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach = node.getObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesOutboundTransfersAch>(
        WithFinancialAccountPostRequestBodyFeaturesOutboundTransfersAch
            .createFromDiscriminatorValue);
    deserializerMap[
        'us_domestic_wire'] = (node) => usDomesticWire = node.getObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesOutboundTransfersUsDomesticWire>(
        WithFinancialAccountPostRequestBodyFeaturesOutboundTransfersUsDomesticWire
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesOutboundTransfersAch>(
        'ach', ach);
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesOutboundTransfersUsDomesticWire>(
        'us_domestic_wire', usDomesticWire);
    writer.writeAdditionalData(additionalData);
  }
}
