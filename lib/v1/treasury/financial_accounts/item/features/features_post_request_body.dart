// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './features_post_request_body_card_issuing.dart';
import './features_post_request_body_deposit_insurance.dart';
import './features_post_request_body_financial_addresses.dart';
import './features_post_request_body_inbound_transfers.dart';
import './features_post_request_body_intra_stripe_flows.dart';
import './features_post_request_body_outbound_payments.dart';
import './features_post_request_body_outbound_transfers.dart';

/// auto generated
class FeaturesPostRequestBody implements Parsable {
  ///  Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
  FeaturesPostRequestBodyCardIssuing? cardIssuing;

  ///  Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
  FeaturesPostRequestBodyDepositInsurance? depositInsurance;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Contains Features that add FinancialAddresses to the FinancialAccount.
  FeaturesPostRequestBodyFinancialAddresses? financialAddresses;

  ///  Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
  FeaturesPostRequestBodyInboundTransfers? inboundTransfers;

  ///  Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
  FeaturesPostRequestBodyIntraStripeFlows? intraStripeFlows;

  ///  Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
  FeaturesPostRequestBodyOutboundPayments? outboundPayments;

  ///  Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
  FeaturesPostRequestBodyOutboundTransfers? outboundTransfers;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FeaturesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FeaturesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getObjectValue<FeaturesPostRequestBodyCardIssuing>(
            FeaturesPostRequestBodyCardIssuing.createFromDiscriminatorValue);
    deserializerMap['deposit_insurance'] = (node) => depositInsurance =
        node.getObjectValue<FeaturesPostRequestBodyDepositInsurance>(
            FeaturesPostRequestBodyDepositInsurance
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['financial_addresses'] = (node) => financialAddresses =
        node.getObjectValue<FeaturesPostRequestBodyFinancialAddresses>(
            FeaturesPostRequestBodyFinancialAddresses
                .createFromDiscriminatorValue);
    deserializerMap['inbound_transfers'] = (node) => inboundTransfers =
        node.getObjectValue<FeaturesPostRequestBodyInboundTransfers>(
            FeaturesPostRequestBodyInboundTransfers
                .createFromDiscriminatorValue);
    deserializerMap['intra_stripe_flows'] = (node) => intraStripeFlows =
        node.getObjectValue<FeaturesPostRequestBodyIntraStripeFlows>(
            FeaturesPostRequestBodyIntraStripeFlows
                .createFromDiscriminatorValue);
    deserializerMap['outbound_payments'] = (node) => outboundPayments =
        node.getObjectValue<FeaturesPostRequestBodyOutboundPayments>(
            FeaturesPostRequestBodyOutboundPayments
                .createFromDiscriminatorValue);
    deserializerMap['outbound_transfers'] = (node) => outboundTransfers =
        node.getObjectValue<FeaturesPostRequestBodyOutboundTransfers>(
            FeaturesPostRequestBodyOutboundTransfers
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<FeaturesPostRequestBodyCardIssuing>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<FeaturesPostRequestBodyDepositInsurance>(
        'deposit_insurance', depositInsurance);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<FeaturesPostRequestBodyFinancialAddresses>(
        'financial_addresses', financialAddresses);
    writer.writeObjectValue<FeaturesPostRequestBodyInboundTransfers>(
        'inbound_transfers', inboundTransfers);
    writer.writeObjectValue<FeaturesPostRequestBodyIntraStripeFlows>(
        'intra_stripe_flows', intraStripeFlows);
    writer.writeObjectValue<FeaturesPostRequestBodyOutboundPayments>(
        'outbound_payments', outboundPayments);
    writer.writeObjectValue<FeaturesPostRequestBodyOutboundTransfers>(
        'outbound_transfers', outboundTransfers);
  }
}
