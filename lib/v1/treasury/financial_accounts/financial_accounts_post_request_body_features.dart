// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './financial_accounts_post_request_body_features_card_issuing.dart';
import './financial_accounts_post_request_body_features_deposit_insurance.dart';
import './financial_accounts_post_request_body_features_financial_addresses.dart';
import './financial_accounts_post_request_body_features_inbound_transfers.dart';
import './financial_accounts_post_request_body_features_intra_stripe_flows.dart';
import './financial_accounts_post_request_body_features_outbound_payments.dart';
import './financial_accounts_post_request_body_features_outbound_transfers.dart';

/// auto generated
/// Encodes whether a FinancialAccount has access to a particular feature. Stripe or the platform can control features via the requested field.
class FinancialAccountsPostRequestBodyFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card_issuing property
  FinancialAccountsPostRequestBodyFeaturesCardIssuing? cardIssuing;

  ///  The deposit_insurance property
  FinancialAccountsPostRequestBodyFeaturesDepositInsurance? depositInsurance;

  ///  The financial_addresses property
  FinancialAccountsPostRequestBodyFeaturesFinancialAddresses?
      financialAddresses;

  ///  The inbound_transfers property
  FinancialAccountsPostRequestBodyFeaturesInboundTransfers? inboundTransfers;

  ///  The intra_stripe_flows property
  FinancialAccountsPostRequestBodyFeaturesIntraStripeFlows? intraStripeFlows;

  ///  The outbound_payments property
  FinancialAccountsPostRequestBodyFeaturesOutboundPayments? outboundPayments;

  ///  The outbound_transfers property
  FinancialAccountsPostRequestBodyFeaturesOutboundTransfers? outboundTransfers;

  /// Instantiates a new [FinancialAccountsPostRequestBodyFeatures] and sets the default values.
  FinancialAccountsPostRequestBodyFeatures() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinancialAccountsPostRequestBodyFeatures createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FinancialAccountsPostRequestBodyFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_issuing'] = (node) => cardIssuing = node
        .getObjectValue<FinancialAccountsPostRequestBodyFeaturesCardIssuing>(
            FinancialAccountsPostRequestBodyFeaturesCardIssuing
                .createFromDiscriminatorValue);
    deserializerMap['deposit_insurance'] = (node) => depositInsurance =
        node.getObjectValue<
                FinancialAccountsPostRequestBodyFeaturesDepositInsurance>(
            FinancialAccountsPostRequestBodyFeaturesDepositInsurance
                .createFromDiscriminatorValue);
    deserializerMap['financial_addresses'] = (node) => financialAddresses =
        node.getObjectValue<
                FinancialAccountsPostRequestBodyFeaturesFinancialAddresses>(
            FinancialAccountsPostRequestBodyFeaturesFinancialAddresses
                .createFromDiscriminatorValue);
    deserializerMap['inbound_transfers'] = (node) => inboundTransfers =
        node.getObjectValue<
                FinancialAccountsPostRequestBodyFeaturesInboundTransfers>(
            FinancialAccountsPostRequestBodyFeaturesInboundTransfers
                .createFromDiscriminatorValue);
    deserializerMap['intra_stripe_flows'] = (node) => intraStripeFlows =
        node.getObjectValue<
                FinancialAccountsPostRequestBodyFeaturesIntraStripeFlows>(
            FinancialAccountsPostRequestBodyFeaturesIntraStripeFlows
                .createFromDiscriminatorValue);
    deserializerMap['outbound_payments'] = (node) => outboundPayments =
        node.getObjectValue<
                FinancialAccountsPostRequestBodyFeaturesOutboundPayments>(
            FinancialAccountsPostRequestBodyFeaturesOutboundPayments
                .createFromDiscriminatorValue);
    deserializerMap['outbound_transfers'] = (node) => outboundTransfers =
        node.getObjectValue<
                FinancialAccountsPostRequestBodyFeaturesOutboundTransfers>(
            FinancialAccountsPostRequestBodyFeaturesOutboundTransfers
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<FinancialAccountsPostRequestBodyFeaturesCardIssuing>(
            'card_issuing', cardIssuing);
    writer.writeObjectValue<
            FinancialAccountsPostRequestBodyFeaturesDepositInsurance>(
        'deposit_insurance', depositInsurance);
    writer.writeObjectValue<
            FinancialAccountsPostRequestBodyFeaturesFinancialAddresses>(
        'financial_addresses', financialAddresses);
    writer.writeObjectValue<
            FinancialAccountsPostRequestBodyFeaturesInboundTransfers>(
        'inbound_transfers', inboundTransfers);
    writer.writeObjectValue<
            FinancialAccountsPostRequestBodyFeaturesIntraStripeFlows>(
        'intra_stripe_flows', intraStripeFlows);
    writer.writeObjectValue<
            FinancialAccountsPostRequestBodyFeaturesOutboundPayments>(
        'outbound_payments', outboundPayments);
    writer.writeObjectValue<
            FinancialAccountsPostRequestBodyFeaturesOutboundTransfers>(
        'outbound_transfers', outboundTransfers);
    writer.writeAdditionalData(additionalData);
  }
}
