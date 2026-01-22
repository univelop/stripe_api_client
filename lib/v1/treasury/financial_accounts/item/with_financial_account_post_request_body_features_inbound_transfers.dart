// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_financial_account_post_request_body_features_inbound_transfers_ach.dart';

/// auto generated
class WithFinancialAccountPostRequestBodyFeaturesInboundTransfers
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  WithFinancialAccountPostRequestBodyFeaturesInboundTransfersAch? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [WithFinancialAccountPostRequestBodyFeaturesInboundTransfers] and sets the default values.
  WithFinancialAccountPostRequestBodyFeaturesInboundTransfers()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithFinancialAccountPostRequestBodyFeaturesInboundTransfers
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithFinancialAccountPostRequestBodyFeaturesInboundTransfers();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach = node.getObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesInboundTransfersAch>(
        WithFinancialAccountPostRequestBodyFeaturesInboundTransfersAch
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesInboundTransfersAch>(
        'ach', ach);
    writer.writeAdditionalData(additionalData);
  }
}
