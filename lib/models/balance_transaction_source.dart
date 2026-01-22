// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './application_fee.dart';
import './charge.dart';
import './connect_collection_transfer.dart';
import './customer_cash_balance_transaction.dart';
import './dispute.dart';
import './fee_refund.dart';
import './issuing/authorization.dart';
import './issuing/transaction.dart';
import './payout.dart';
import './refund.dart';
import './reserve_transaction.dart';
import './tax_deducted_at_source.dart';
import './topup.dart';
import './transfer.dart';
import './transfer_reversal.dart';

/// auto generated
/// Composed type wrapper for classes [ApplicationFee], [Authorization], [Charge], [ConnectCollectionTransfer], [CustomerCashBalanceTransaction], [Dispute], [FeeRefund], [Payout], [Refund], [ReserveTransaction], [String?], [TaxDeductedAtSource], [Topup], [Transaction], [TransferReversal], [Transfer]
class BalanceTransactionSource implements Parsable {
  ///  Composed type representation for type [ApplicationFee]
  ApplicationFee? applicationFee;

  ///  Composed type representation for type [Authorization]
  Authorization? authorization;

  ///  Composed type representation for type [Charge]
  Charge? charge;

  ///  Composed type representation for type [ConnectCollectionTransfer]
  ConnectCollectionTransfer? connectCollectionTransfer;

  ///  Composed type representation for type [CustomerCashBalanceTransaction]
  CustomerCashBalanceTransaction? customerCashBalanceTransaction;

  ///  Composed type representation for type [Dispute]
  Dispute? dispute;

  ///  Composed type representation for type [FeeRefund]
  FeeRefund? feeRefund;

  ///  Composed type representation for type [Payout]
  Payout? payout;

  ///  Composed type representation for type [Refund]
  Refund? refund;

  ///  Composed type representation for type [ReserveTransaction]
  ReserveTransaction? reserveTransaction;

  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [TaxDeductedAtSource]
  TaxDeductedAtSource? taxDeductedAtSource;

  ///  Composed type representation for type [Topup]
  Topup? topup;

  ///  Composed type representation for type [Transaction]
  Transaction? transaction;

  ///  Composed type representation for type [Transfer]
  Transfer? transfer;

  ///  Composed type representation for type [TransferReversal]
  TransferReversal? transferReversal;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceTransactionSource createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = BalanceTransactionSource();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.applicationFee = ApplicationFee();
      result.authorization = Authorization();
      result.charge = Charge();
      result.connectCollectionTransfer = ConnectCollectionTransfer();
      result.customerCashBalanceTransaction = CustomerCashBalanceTransaction();
      result.dispute = Dispute();
      result.feeRefund = FeeRefund();
      result.payout = Payout();
      result.refund = Refund();
      result.reserveTransaction = ReserveTransaction();
      result.taxDeductedAtSource = TaxDeductedAtSource();
      result.topup = Topup();
      result.transaction = Transaction();
      result.transfer = Transfer();
      result.transferReversal = TransferReversal();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (applicationFee != null) {
      applicationFee!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (authorization != null) {
      authorization!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (charge != null) {
      charge!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (connectCollectionTransfer != null) {
      connectCollectionTransfer!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (customerCashBalanceTransaction != null) {
      customerCashBalanceTransaction!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (dispute != null) {
      dispute!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (feeRefund != null) {
      feeRefund!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (payout != null) {
      payout!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (refund != null) {
      refund!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (reserveTransaction != null) {
      reserveTransaction!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (taxDeductedAtSource != null) {
      taxDeductedAtSource!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (topup != null) {
      topup!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (transaction != null) {
      transaction!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (transfer != null) {
      transfer!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (transferReversal != null) {
      transferReversal!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<ApplicationFee>(null, applicationFee, [
        authorization,
        charge,
        connectCollectionTransfer,
        customerCashBalanceTransaction,
        dispute,
        feeRefund,
        payout,
        refund,
        reserveTransaction,
        taxDeductedAtSource,
        topup,
        transaction,
        transfer,
        transferReversal
      ]);
    }
  }
}
