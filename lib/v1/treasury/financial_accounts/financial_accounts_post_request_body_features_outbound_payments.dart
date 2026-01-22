// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './financial_accounts_post_request_body_features_outbound_payments_ach.dart';
import './financial_accounts_post_request_body_features_outbound_payments_us_domestic_wire.dart';

/// auto generated
class FinancialAccountsPostRequestBodyFeaturesOutboundPayments
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  FinancialAccountsPostRequestBodyFeaturesOutboundPaymentsAch? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The us_domestic_wire property
  FinancialAccountsPostRequestBodyFeaturesOutboundPaymentsUsDomesticWire?
      usDomesticWire;

  /// Instantiates a new [FinancialAccountsPostRequestBodyFeaturesOutboundPayments] and sets the default values.
  FinancialAccountsPostRequestBodyFeaturesOutboundPayments()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinancialAccountsPostRequestBodyFeaturesOutboundPayments
      createFromDiscriminatorValue(ParseNode parseNode) {
    return FinancialAccountsPostRequestBodyFeaturesOutboundPayments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach = node.getObjectValue<
            FinancialAccountsPostRequestBodyFeaturesOutboundPaymentsAch>(
        FinancialAccountsPostRequestBodyFeaturesOutboundPaymentsAch
            .createFromDiscriminatorValue);
    deserializerMap[
        'us_domestic_wire'] = (node) => usDomesticWire = node.getObjectValue<
            FinancialAccountsPostRequestBodyFeaturesOutboundPaymentsUsDomesticWire>(
        FinancialAccountsPostRequestBodyFeaturesOutboundPaymentsUsDomesticWire
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            FinancialAccountsPostRequestBodyFeaturesOutboundPaymentsAch>(
        'ach', ach);
    writer.writeObjectValue<
            FinancialAccountsPostRequestBodyFeaturesOutboundPaymentsUsDomesticWire>(
        'us_domestic_wire', usDomesticWire);
    writer.writeAdditionalData(additionalData);
  }
}
