// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../billing_credit_grants_resource_balance_credit.dart';
import '../billing_credit_grants_resource_balance_debit.dart';
import './credit_balance_transaction_credit_grant.dart';
import './credit_balance_transaction_object.dart';
import './credit_balance_transaction_test_clock.dart';
import './credit_balance_transaction_type.dart';

/// auto generated
/// A credit balance transaction is a resource representing a transaction (either a credit or a debit) against an existing credit grant.
class CreditBalanceTransaction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Credit details for this credit balance transaction. Only present if type is `credit`.
  BillingCreditGrantsResourceBalanceCredit? credit;

  ///  The credit grant associated with this credit balance transaction.
  CreditBalanceTransactionCreditGrant? creditGrant;

  ///  Debit details for this credit balance transaction. Only present if type is `debit`.
  BillingCreditGrantsResourceBalanceDebit? debit;

  ///  The effective time of this credit balance transaction.
  int? effectiveAt;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  CreditBalanceTransactionObject? object;

  ///  ID of the test clock this credit balance transaction belongs to.
  CreditBalanceTransactionTestClock? testClock;

  ///  The type of credit balance transaction (credit or debit).
  CreditBalanceTransactionType? type_;

  /// Instantiates a new [CreditBalanceTransaction] and sets the default values.
  CreditBalanceTransaction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditBalanceTransaction createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreditBalanceTransaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['credit'] = (node) => credit = node.getObjectValue<
            BillingCreditGrantsResourceBalanceCredit>(
        BillingCreditGrantsResourceBalanceCredit.createFromDiscriminatorValue);
    deserializerMap['credit_grant'] = (node) => creditGrant =
        node.getObjectValue<CreditBalanceTransactionCreditGrant>(
            CreditBalanceTransactionCreditGrant.createFromDiscriminatorValue);
    deserializerMap['debit'] = (node) => debit = node.getObjectValue<
            BillingCreditGrantsResourceBalanceDebit>(
        BillingCreditGrantsResourceBalanceDebit.createFromDiscriminatorValue);
    deserializerMap['effective_at'] =
        (node) => effectiveAt = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CreditBalanceTransactionObject>((stringValue) =>
            CreditBalanceTransactionObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['test_clock'] = (node) => testClock =
        node.getObjectValue<CreditBalanceTransactionTestClock>(
            CreditBalanceTransactionTestClock.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CreditBalanceTransactionType>((stringValue) =>
            CreditBalanceTransactionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeObjectValue<BillingCreditGrantsResourceBalanceCredit>(
        'credit', credit);
    writer.writeObjectValue<CreditBalanceTransactionCreditGrant>(
        'credit_grant', creditGrant);
    writer.writeObjectValue<BillingCreditGrantsResourceBalanceDebit>(
        'debit', debit);
    writer.writeIntValue('effective_at', effectiveAt);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<CreditBalanceTransactionObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<CreditBalanceTransactionTestClock>(
        'test_clock', testClock);
    writer.writeEnumValue<CreditBalanceTransactionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
