// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payout.dart';
import './treasury/credit_reversal.dart';
import './treasury/outbound_payment.dart';
import './treasury/outbound_transfer.dart';
import './treasury_received_credits_resource_source_flows_details_type.dart';

/// auto generated
class TreasuryReceivedCreditsResourceSourceFlowsDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  You can reverse some [ReceivedCredits](https://api.stripe.com#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
  CreditReversal? creditReversal;

  ///  Use [OutboundPayments](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments) to send funds to another party's external bank account or [FinancialAccount](https://api.stripe.com#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https://api.stripe.com#outbound_transfers).Simulate OutboundPayment state changes with the `/v1/test_helpers/treasury/outbound_payments` endpoints. These methods can only be called on test mode objects.Related guide: [Moving money with Treasury using OutboundPayment objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments)
  OutboundPayment? outboundPayment;

  ///  Use [OutboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers) to transfer funds from a [FinancialAccount](https://api.stripe.com#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https://api.stripe.com#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user's own external bank account.Simulate OutboundTransfer state changes with the `/v1/test_helpers/treasury/outbound_transfers` endpoints. These methods can only be called on test mode objects.Related guide: [Moving money with Treasury using OutboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers)
  OutboundTransfer? outboundTransfer;

  ///  A `Payout` object is created when you receive funds from Stripe, or when youinitiate a payout to either a bank account or debit card of a [connectedStripe account](/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,and list all payouts. Payouts are made on [varyingschedules](/docs/connect/manage-payout-schedule), depending on your country andindustry.Related guide: [Receiving payouts](https://docs.stripe.com/payouts)
  Payout? payout;

  ///  The type of the source flow that originated the ReceivedCredit.
  TreasuryReceivedCreditsResourceSourceFlowsDetailsType? type_;

  /// Instantiates a new [TreasuryReceivedCreditsResourceSourceFlowsDetails] and sets the default values.
  TreasuryReceivedCreditsResourceSourceFlowsDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryReceivedCreditsResourceSourceFlowsDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryReceivedCreditsResourceSourceFlowsDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['credit_reversal'] = (node) => creditReversal =
        node.getObjectValue<CreditReversal>(
            CreditReversal.createFromDiscriminatorValue);
    deserializerMap['outbound_payment'] = (node) => outboundPayment =
        node.getObjectValue<OutboundPayment>(
            OutboundPayment.createFromDiscriminatorValue);
    deserializerMap['outbound_transfer'] = (node) => outboundTransfer =
        node.getObjectValue<OutboundTransfer>(
            OutboundTransfer.createFromDiscriminatorValue);
    deserializerMap['payout'] = (node) => payout =
        node.getObjectValue<Payout>(Payout.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<TreasuryReceivedCreditsResourceSourceFlowsDetailsType>(
            (stringValue) =>
                TreasuryReceivedCreditsResourceSourceFlowsDetailsType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CreditReversal>('credit_reversal', creditReversal);
    writer.writeObjectValue<OutboundPayment>(
        'outbound_payment', outboundPayment);
    writer.writeObjectValue<OutboundTransfer>(
        'outbound_transfer', outboundTransfer);
    writer.writeObjectValue<Payout>('payout', payout);
    writer
        .writeEnumValue<TreasuryReceivedCreditsResourceSourceFlowsDetailsType>(
            'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
