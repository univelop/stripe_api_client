// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_financial_account_post_request_body_features_card_issuing.dart';
import './with_financial_account_post_request_body_features_deposit_insurance.dart';
import './with_financial_account_post_request_body_features_financial_addresses.dart';
import './with_financial_account_post_request_body_features_inbound_transfers.dart';
import './with_financial_account_post_request_body_features_intra_stripe_flows.dart';
import './with_financial_account_post_request_body_features_outbound_payments.dart';
import './with_financial_account_post_request_body_features_outbound_transfers.dart';

/// auto generated
/// Encodes whether a FinancialAccount has access to a particular feature, with a status enum and associated `status_details`. Stripe or the platform may control features via the requested field.
class WithFinancialAccountPostRequestBodyFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card_issuing property
  WithFinancialAccountPostRequestBodyFeaturesCardIssuing? cardIssuing;

  ///  The deposit_insurance property
  WithFinancialAccountPostRequestBodyFeaturesDepositInsurance? depositInsurance;

  ///  The financial_addresses property
  WithFinancialAccountPostRequestBodyFeaturesFinancialAddresses?
      financialAddresses;

  ///  The inbound_transfers property
  WithFinancialAccountPostRequestBodyFeaturesInboundTransfers? inboundTransfers;

  ///  The intra_stripe_flows property
  WithFinancialAccountPostRequestBodyFeaturesIntraStripeFlows? intraStripeFlows;

  ///  The outbound_payments property
  WithFinancialAccountPostRequestBodyFeaturesOutboundPayments? outboundPayments;

  ///  The outbound_transfers property
  WithFinancialAccountPostRequestBodyFeaturesOutboundTransfers?
      outboundTransfers;

  /// Instantiates a new [WithFinancialAccountPostRequestBodyFeatures] and sets the default values.
  WithFinancialAccountPostRequestBodyFeatures() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithFinancialAccountPostRequestBodyFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithFinancialAccountPostRequestBodyFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_issuing'] = (node) => cardIssuing = node
        .getObjectValue<WithFinancialAccountPostRequestBodyFeaturesCardIssuing>(
            WithFinancialAccountPostRequestBodyFeaturesCardIssuing
                .createFromDiscriminatorValue);
    deserializerMap['deposit_insurance'] = (node) => depositInsurance =
        node.getObjectValue<
                WithFinancialAccountPostRequestBodyFeaturesDepositInsurance>(
            WithFinancialAccountPostRequestBodyFeaturesDepositInsurance
                .createFromDiscriminatorValue);
    deserializerMap['financial_addresses'] = (node) => financialAddresses =
        node.getObjectValue<
                WithFinancialAccountPostRequestBodyFeaturesFinancialAddresses>(
            WithFinancialAccountPostRequestBodyFeaturesFinancialAddresses
                .createFromDiscriminatorValue);
    deserializerMap['inbound_transfers'] = (node) => inboundTransfers =
        node.getObjectValue<
                WithFinancialAccountPostRequestBodyFeaturesInboundTransfers>(
            WithFinancialAccountPostRequestBodyFeaturesInboundTransfers
                .createFromDiscriminatorValue);
    deserializerMap['intra_stripe_flows'] = (node) => intraStripeFlows =
        node.getObjectValue<
                WithFinancialAccountPostRequestBodyFeaturesIntraStripeFlows>(
            WithFinancialAccountPostRequestBodyFeaturesIntraStripeFlows
                .createFromDiscriminatorValue);
    deserializerMap['outbound_payments'] = (node) => outboundPayments =
        node.getObjectValue<
                WithFinancialAccountPostRequestBodyFeaturesOutboundPayments>(
            WithFinancialAccountPostRequestBodyFeaturesOutboundPayments
                .createFromDiscriminatorValue);
    deserializerMap['outbound_transfers'] = (node) => outboundTransfers =
        node.getObjectValue<
                WithFinancialAccountPostRequestBodyFeaturesOutboundTransfers>(
            WithFinancialAccountPostRequestBodyFeaturesOutboundTransfers
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesCardIssuing>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesDepositInsurance>(
        'deposit_insurance', depositInsurance);
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesFinancialAddresses>(
        'financial_addresses', financialAddresses);
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesInboundTransfers>(
        'inbound_transfers', inboundTransfers);
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesIntraStripeFlows>(
        'intra_stripe_flows', intraStripeFlows);
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesOutboundPayments>(
        'outbound_payments', outboundPayments);
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesOutboundTransfers>(
        'outbound_transfers', outboundTransfers);
    writer.writeAdditionalData(additionalData);
  }
}
