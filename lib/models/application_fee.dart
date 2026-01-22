// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './application_fee_account.dart';
import './application_fee_application.dart';
import './application_fee_balance_transaction.dart';
import './application_fee_charge.dart';
import './application_fee_object.dart';
import './application_fee_originating_transaction.dart';
import './application_fee_refunds.dart';
import './platform_earning_fee_source.dart';

/// auto generated
class ApplicationFee implements AdditionalDataHolder, Parsable {
  ///  ID of the Stripe account this fee was taken from.
  ApplicationFeeAccount? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount earned, in cents (or local equivalent).
  int? amount;

  ///  Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the fee if a partial refund was issued)
  int? amountRefunded;

  ///  ID of the Connect application that earned the fee.
  ApplicationFeeApplication? application;

  ///  Balance transaction that describes the impact of this collected application fee on your account balance (not including refunds).
  ApplicationFeeBalanceTransaction? balanceTransaction;

  ///  ID of the charge that the application fee was taken from.
  ApplicationFeeCharge? charge;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Polymorphic source of the application fee. Includes the ID of the object the application fee was created from.
  PlatformEarningFeeSource? feeSource;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  ApplicationFeeObject? object;

  ///  ID of the corresponding charge on the platform account, if this fee was the result of a charge using the `destination` parameter.
  ApplicationFeeOriginatingTransaction? originatingTransaction;

  ///  Whether the fee has been fully refunded. If the fee is only partially refunded, this attribute will still be false.
  bool? refunded;

  ///  A list of refunds that have been applied to the fee.
  ApplicationFeeRefunds? refunds;

  /// Instantiates a new [ApplicationFee] and sets the default values.
  ApplicationFee() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ApplicationFee createFromDiscriminatorValue(ParseNode parseNode) {
    return ApplicationFee();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account =
        node.getObjectValue<ApplicationFeeAccount>(
            ApplicationFeeAccount.createFromDiscriminatorValue);
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_refunded'] =
        (node) => amountRefunded = node.getIntValue();
    deserializerMap['application'] = (node) => application =
        node.getObjectValue<ApplicationFeeApplication>(
            ApplicationFeeApplication.createFromDiscriminatorValue);
    deserializerMap['balance_transaction'] = (node) => balanceTransaction =
        node.getObjectValue<ApplicationFeeBalanceTransaction>(
            ApplicationFeeBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['charge'] = (node) => charge =
        node.getObjectValue<ApplicationFeeCharge>(
            ApplicationFeeCharge.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['fee_source'] = (node) => feeSource =
        node.getObjectValue<PlatformEarningFeeSource>(
            PlatformEarningFeeSource.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ApplicationFeeObject>((stringValue) =>
            ApplicationFeeObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['originating_transaction'] = (node) =>
        originatingTransaction = node.getObjectValue<
                ApplicationFeeOriginatingTransaction>(
            ApplicationFeeOriginatingTransaction.createFromDiscriminatorValue);
    deserializerMap['refunded'] = (node) => refunded = node.getBoolValue();
    deserializerMap['refunds'] = (node) => refunds =
        node.getObjectValue<ApplicationFeeRefunds>(
            ApplicationFeeRefunds.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ApplicationFeeAccount>('account', account);
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('amount_refunded', amountRefunded);
    writer.writeObjectValue<ApplicationFeeApplication>(
        'application', application);
    writer.writeObjectValue<ApplicationFeeBalanceTransaction>(
        'balance_transaction', balanceTransaction);
    writer.writeObjectValue<ApplicationFeeCharge>('charge', charge);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<PlatformEarningFeeSource>('fee_source', feeSource);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<ApplicationFeeObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<ApplicationFeeOriginatingTransaction>(
        'originating_transaction', originatingTransaction);
    writer.writeBoolValue('refunded', value: refunded);
    writer.writeObjectValue<ApplicationFeeRefunds>('refunds', refunds);
    writer.writeAdditionalData(additionalData);
  }
}
