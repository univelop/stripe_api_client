// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_account_account.dart';
import './bank_account_available_payout_methods.dart';
import './bank_account_customer.dart';
import './bank_account_metadata.dart';
import './bank_account_object.dart';
import './external_account_requirements.dart';

/// auto generated
/// These bank accounts are payment methods on `Customer` objects.On the other hand [External Accounts](/api#external_accounts) are transferdestinations on `Account` objects for connected accounts.They can be bank accounts or debit cards as well, and are documented in the links above.Related guide: [Bank debits and transfers](/payments/bank-debits-transfers)
class BankAccount implements AdditionalDataHolder, Parsable {
  ///  The account this bank account belongs to. Only applicable on Accounts (not customers or recipients) This property is only available when returned as an [External Account](/api/external_account_bank_accounts/object) where [controller.is_controller](/api/accounts/object#account_object-controller-is_controller) is `true`.
  BankAccountAccount? account;

  ///  The name of the person or business that owns the bank account.
  String? accountHolderName;

  ///  The type of entity that holds the account. This can be either `individual` or `company`.
  String? accountHolderType;

  ///  The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
  String? accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A set of available payout methods for this bank account. Only values from this set should be passed as the `method` when creating a payout.
  Iterable<BankAccountAvailablePayoutMethods>? availablePayoutMethods;

  ///  Name of the bank associated with the routing number (e.g., `WELLS FARGO`).
  String? bankName;

  ///  Two-letter ISO code representing the country the bank account is located in.
  String? country;

  ///  Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
  String? currency;

  ///  The ID of the customer that the bank account is associated with.
  BankAccountCustomer? customer;

  ///  Whether this bank account is the default external account for its currency.
  bool? defaultForCurrency;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  Information about the [upcoming new requirements for the bank account](https://docs.stripe.com/connect/custom-accounts/future-requirements), including what information needs to be collected, and by when.
  ExternalAccountRequirements? futureRequirements;

  ///  Unique identifier for the object.
  String? id;

  ///  The last four digits of the bank account number.
  String? last4;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  BankAccountMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  BankAccountObject? object;

  ///  Information about the requirements for the bank account, including what information needs to be collected.
  ExternalAccountRequirements? requirements;

  ///  The routing transit number for the bank account.
  String? routingNumber;

  ///  For bank accounts, possible values are `new`, `validated`, `verified`, `verification_failed`, `tokenized_account_number_deactivated` or `errored`. A bank account that hasn't had any activity or validation performed is `new`. If Stripe can determine that the bank account exists, its status will be `validated`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be `verified`. If the verification failed for any reason, such as microdeposit failure, the status will be `verification_failed`. If the status is `tokenized_account_number_deactivated`, the account utilizes a tokenized account number which has been deactivated due to expiration or revocation. This account will need to be reverified to continue using it for money movement. If a payout sent to this bank account fails, we'll set the status to `errored` and will not continue to send [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) until the bank details are updated.For external accounts, possible values are `new`, `errored`, `verification_failed`, and `tokenized_account_number_deactivated`. If a payout fails, the status is set to `errored` and scheduled payouts are stopped until account details are updated. In the US and India, if we can't [verify the owner of the bank account](https://support.stripe.com/questions/bank-account-ownership-verification), we'll set the status to `verification_failed`. Other validations aren't run against external accounts because they're only used for payouts. This means the other statuses don't apply.
  String? status;

  /// Instantiates a new [BankAccount] and sets the default values.
  BankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankAccount createFromDiscriminatorValue(ParseNode parseNode) {
    return BankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account =
        node.getObjectValue<BankAccountAccount>(
            BankAccountAccount.createFromDiscriminatorValue);
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['account_holder_type'] =
        (node) => accountHolderType = node.getStringValue();
    deserializerMap['account_type'] =
        (node) => accountType = node.getStringValue();
    deserializerMap['available_payout_methods'] = (node) =>
        availablePayoutMethods =
            node.getCollectionOfEnumValues<BankAccountAvailablePayoutMethods>(
                (stringValue) => BankAccountAvailablePayoutMethods.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<BankAccountCustomer>(
            BankAccountCustomer.createFromDiscriminatorValue);
    deserializerMap['default_for_currency'] =
        (node) => defaultForCurrency = node.getBoolValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['future_requirements'] = (node) => futureRequirements =
        node.getObjectValue<ExternalAccountRequirements>(
            ExternalAccountRequirements.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<BankAccountMetadata>(
            BankAccountMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<BankAccountObject>((stringValue) => BankAccountObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['requirements'] = (node) => requirements =
        node.getObjectValue<ExternalAccountRequirements>(
            ExternalAccountRequirements.createFromDiscriminatorValue);
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    deserializerMap['status'] = (node) => status = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BankAccountAccount>('account', account);
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeStringValue('account_holder_type', accountHolderType);
    writer.writeStringValue('account_type', accountType);
    writer.writeCollectionOfEnumValues<BankAccountAvailablePayoutMethods>(
        'available_payout_methods', availablePayoutMethods, (e) => e?.value);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('country', country);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<BankAccountCustomer>('customer', customer);
    writer.writeBoolValue('default_for_currency', value: defaultForCurrency);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeObjectValue<ExternalAccountRequirements>(
        'future_requirements', futureRequirements);
    writer.writeStringValue('id', id);
    writer.writeStringValue('last4', last4);
    writer.writeObjectValue<BankAccountMetadata>('metadata', metadata);
    writer.writeEnumValue<BankAccountObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<ExternalAccountRequirements>(
        'requirements', requirements);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeStringValue('status', status);
    writer.writeAdditionalData(additionalData);
  }
}
