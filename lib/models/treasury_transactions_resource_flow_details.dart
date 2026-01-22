// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing/authorization.dart';
import './treasury/credit_reversal.dart';
import './treasury/debit_reversal.dart';
import './treasury/inbound_transfer.dart';
import './treasury/outbound_payment.dart';
import './treasury/outbound_transfer.dart';
import './treasury/received_credit.dart';
import './treasury/received_debit.dart';
import './treasury_transactions_resource_flow_details_type.dart';

/// auto generated
class TreasuryTransactionsResourceFlowDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  You can reverse some [ReceivedCredits](https://api.stripe.com#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
  CreditReversal? creditReversal;

  ///  You can reverse some [ReceivedDebits](https://api.stripe.com#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
  DebitReversal? debitReversal;

  ///  Use [InboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers) to add funds to your [FinancialAccount](https://api.stripe.com#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.Related guide: [Moving money with Treasury using InboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers)
  InboundTransfer? inboundTransfer;

  ///  When an [issued card](https://docs.stripe.com/issuing) is used to make a purchase, an Issuing `Authorization`object is created. [Authorizations](https://docs.stripe.com/issuing/purchases/authorizations) must be approved for thepurchase to be completed successfully.Related guide: [Issued card authorizations](https://docs.stripe.com/issuing/purchases/authorizations)
  Authorization? issuingAuthorization;

  ///  Use [OutboundPayments](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments) to send funds to another party's external bank account or [FinancialAccount](https://api.stripe.com#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https://api.stripe.com#outbound_transfers).Simulate OutboundPayment state changes with the `/v1/test_helpers/treasury/outbound_payments` endpoints. These methods can only be called on test mode objects.Related guide: [Moving money with Treasury using OutboundPayment objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments)
  OutboundPayment? outboundPayment;

  ///  Use [OutboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers) to transfer funds from a [FinancialAccount](https://api.stripe.com#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https://api.stripe.com#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user's own external bank account.Simulate OutboundTransfer state changes with the `/v1/test_helpers/treasury/outbound_transfers` endpoints. These methods can only be called on test mode objects.Related guide: [Moving money with Treasury using OutboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers)
  OutboundTransfer? outboundTransfer;

  ///  ReceivedCredits represent funds sent to a [FinancialAccount](https://api.stripe.com#financial_accounts) (for example, via ACH or wire). These money movements are not initiated from the FinancialAccount.
  ReceivedCredit? receivedCredit;

  ///  ReceivedDebits represent funds pulled from a [FinancialAccount](https://api.stripe.com#financial_accounts). These are not initiated from the FinancialAccount.
  ReceivedDebit? receivedDebit;

  ///  Type of the flow that created the Transaction. Set to the same value as `flow_type`.
  TreasuryTransactionsResourceFlowDetailsType? type_;

  /// Instantiates a new [TreasuryTransactionsResourceFlowDetails] and sets the default values.
  TreasuryTransactionsResourceFlowDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryTransactionsResourceFlowDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TreasuryTransactionsResourceFlowDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['credit_reversal'] = (node) => creditReversal =
        node.getObjectValue<CreditReversal>(
            CreditReversal.createFromDiscriminatorValue);
    deserializerMap['debit_reversal'] = (node) => debitReversal =
        node.getObjectValue<DebitReversal>(
            DebitReversal.createFromDiscriminatorValue);
    deserializerMap['inbound_transfer'] = (node) => inboundTransfer =
        node.getObjectValue<InboundTransfer>(
            InboundTransfer.createFromDiscriminatorValue);
    deserializerMap['issuing_authorization'] = (node) => issuingAuthorization =
        node.getObjectValue<Authorization>(
            Authorization.createFromDiscriminatorValue);
    deserializerMap['outbound_payment'] = (node) => outboundPayment =
        node.getObjectValue<OutboundPayment>(
            OutboundPayment.createFromDiscriminatorValue);
    deserializerMap['outbound_transfer'] = (node) => outboundTransfer =
        node.getObjectValue<OutboundTransfer>(
            OutboundTransfer.createFromDiscriminatorValue);
    deserializerMap['received_credit'] = (node) => receivedCredit =
        node.getObjectValue<ReceivedCredit>(
            ReceivedCredit.createFromDiscriminatorValue);
    deserializerMap['received_debit'] = (node) => receivedDebit =
        node.getObjectValue<ReceivedDebit>(
            ReceivedDebit.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<TreasuryTransactionsResourceFlowDetailsType>(
            (stringValue) => TreasuryTransactionsResourceFlowDetailsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CreditReversal>('credit_reversal', creditReversal);
    writer.writeObjectValue<DebitReversal>('debit_reversal', debitReversal);
    writer.writeObjectValue<InboundTransfer>(
        'inbound_transfer', inboundTransfer);
    writer.writeObjectValue<Authorization>(
        'issuing_authorization', issuingAuthorization);
    writer.writeObjectValue<OutboundPayment>(
        'outbound_payment', outboundPayment);
    writer.writeObjectValue<OutboundTransfer>(
        'outbound_transfer', outboundTransfer);
    writer.writeObjectValue<ReceivedCredit>('received_credit', receivedCredit);
    writer.writeObjectValue<ReceivedDebit>('received_debit', receivedDebit);
    writer.writeEnumValue<TreasuryTransactionsResourceFlowDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
