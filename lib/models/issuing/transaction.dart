// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../issuing_authorization_merchant_data.dart';
import '../issuing_transaction_amount_details.dart';
import '../issuing_transaction_network_data.dart';
import '../issuing_transaction_purchase_details.dart';
import '../issuing_transaction_treasury.dart';
import './transaction_authorization.dart';
import './transaction_balance_transaction.dart';
import './transaction_card.dart';
import './transaction_cardholder.dart';
import './transaction_dispute.dart';
import './transaction_metadata.dart';
import './transaction_object.dart';
import './transaction_token.dart';
import './transaction_type.dart';
import './transaction_wallet.dart';

/// auto generated
/// Any use of an [issued card](https://docs.stripe.com/issuing) that results in funds entering or leavingyour Stripe account, such as a completed purchase or refund, is represented by an Issuing`Transaction` object.Related guide: [Issued card transactions](https://docs.stripe.com/issuing/purchases/transactions)
class Transaction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The transaction amount, which will be reflected in your balance. This amount is in your currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amount;

  ///  Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  IssuingTransactionAmountDetails? amountDetails;

  ///  The `Authorization` object that led to this transaction.
  TransactionAuthorization? authorization;

  ///  ID of the [balance transaction](https://docs.stripe.com/api/balance_transactions) associated with this transaction.
  TransactionBalanceTransaction? balanceTransaction;

  ///  The card used to make this transaction.
  TransactionCard? card;

  ///  The cardholder to whom this transaction belongs.
  TransactionCardholder? cardholder;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  If you've disputed the transaction, the ID of the dispute.
  TransactionDispute? dispute;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The amount that the merchant will receive, denominated in `merchant_currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). It will be different from `amount` if the merchant is taking payment in a different currency.
  int? merchantAmount;

  ///  The currency with which the merchant is taking payment.
  String? merchantCurrency;

  ///  The merchant_data property
  IssuingAuthorizationMerchantData? merchantData;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  TransactionMetadata? metadata;

  ///  Details about the transaction, such as processing dates, set by the card network.
  IssuingTransactionNetworkData? networkData;

  ///  String representing the object's type. Objects of the same type share the same value.
  TransactionObject? object;

  ///  Additional purchase information that is optionally provided by the merchant.
  IssuingTransactionPurchaseDetails? purchaseDetails;

  ///  [Token](https://docs.stripe.com/api/issuing/tokens/object) object used for this transaction. If a network token was not used for this transaction, this field will be null.
  TransactionToken? token;

  ///  [Treasury](https://docs.stripe.com/api/treasury) details related to this transaction if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
  IssuingTransactionTreasury? treasury;

  ///  The nature of the transaction.
  TransactionType? type_;

  ///  The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
  TransactionWallet? wallet;

  /// Instantiates a new [Transaction] and sets the default values.
  Transaction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Transaction createFromDiscriminatorValue(ParseNode parseNode) {
    return Transaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_details'] = (node) => amountDetails =
        node.getObjectValue<IssuingTransactionAmountDetails>(
            IssuingTransactionAmountDetails.createFromDiscriminatorValue);
    deserializerMap['authorization'] = (node) => authorization =
        node.getObjectValue<TransactionAuthorization>(
            TransactionAuthorization.createFromDiscriminatorValue);
    deserializerMap['balance_transaction'] = (node) => balanceTransaction =
        node.getObjectValue<TransactionBalanceTransaction>(
            TransactionBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<TransactionCard>(
            TransactionCard.createFromDiscriminatorValue);
    deserializerMap['cardholder'] = (node) => cardholder =
        node.getObjectValue<TransactionCardholder>(
            TransactionCardholder.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['dispute'] = (node) => dispute =
        node.getObjectValue<TransactionDispute>(
            TransactionDispute.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['merchant_amount'] =
        (node) => merchantAmount = node.getIntValue();
    deserializerMap['merchant_currency'] =
        (node) => merchantCurrency = node.getStringValue();
    deserializerMap['merchant_data'] = (node) => merchantData =
        node.getObjectValue<IssuingAuthorizationMerchantData>(
            IssuingAuthorizationMerchantData.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<TransactionMetadata>(
            TransactionMetadata.createFromDiscriminatorValue);
    deserializerMap['network_data'] = (node) => networkData =
        node.getObjectValue<IssuingTransactionNetworkData>(
            IssuingTransactionNetworkData.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TransactionObject>((stringValue) => TransactionObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['purchase_details'] = (node) => purchaseDetails =
        node.getObjectValue<IssuingTransactionPurchaseDetails>(
            IssuingTransactionPurchaseDetails.createFromDiscriminatorValue);
    deserializerMap['token'] = (node) => token =
        node.getObjectValue<TransactionToken>(
            TransactionToken.createFromDiscriminatorValue);
    deserializerMap['treasury'] = (node) => treasury =
        node.getObjectValue<IssuingTransactionTreasury>(
            IssuingTransactionTreasury.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<TransactionType>((stringValue) => TransactionType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['wallet'] = (node) => wallet =
        node.getEnumValue<TransactionWallet>((stringValue) => TransactionWallet
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<IssuingTransactionAmountDetails>(
        'amount_details', amountDetails);
    writer.writeObjectValue<TransactionAuthorization>(
        'authorization', authorization);
    writer.writeObjectValue<TransactionBalanceTransaction>(
        'balance_transaction', balanceTransaction);
    writer.writeObjectValue<TransactionCard>('card', card);
    writer.writeObjectValue<TransactionCardholder>('cardholder', cardholder);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<TransactionDispute>('dispute', dispute);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeIntValue('merchant_amount', merchantAmount);
    writer.writeStringValue('merchant_currency', merchantCurrency);
    writer.writeObjectValue<IssuingAuthorizationMerchantData>(
        'merchant_data', merchantData);
    writer.writeObjectValue<TransactionMetadata>('metadata', metadata);
    writer.writeObjectValue<IssuingTransactionNetworkData>(
        'network_data', networkData);
    writer.writeEnumValue<TransactionObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<IssuingTransactionPurchaseDetails>(
        'purchase_details', purchaseDetails);
    writer.writeObjectValue<TransactionToken>('token', token);
    writer.writeObjectValue<IssuingTransactionTreasury>('treasury', treasury);
    writer.writeEnumValue<TransactionType>('type', type_, (e) => e?.value);
    writer.writeEnumValue<TransactionWallet>('wallet', wallet, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
