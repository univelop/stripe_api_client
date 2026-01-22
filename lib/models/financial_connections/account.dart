// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../bank_connections_resource_account_number_details.dart';
import '../bank_connections_resource_accountholder.dart';
import '../bank_connections_resource_balance.dart';
import '../bank_connections_resource_balance_refresh.dart';
import '../bank_connections_resource_ownership_refresh.dart';
import '../bank_connections_resource_transaction_refresh.dart';
import './account_category.dart';
import './account_object.dart';
import './account_ownership_wrapper.dart';
import './account_permissions.dart';
import './account_status.dart';
import './account_subcategory.dart';
import './account_subscriptions.dart';
import './account_supported_payment_method_types.dart';

/// auto generated
/// A Financial Connections Account represents an account that exists outside of Stripe, to which you have been granted some degree of access.
class Account implements AdditionalDataHolder, Parsable {
  ///  The account holder that this account belongs to.
  BankConnectionsResourceAccountholder? accountHolder;

  ///  Details about the account numbers.
  Iterable<BankConnectionsResourceAccountNumberDetails>? accountNumbers;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The most recent information about the account's balance.
  BankConnectionsResourceBalance? balance;

  ///  The state of the most recent attempt to refresh the account balance.
  BankConnectionsResourceBalanceRefresh? balanceRefresh;

  ///  The type of the account. Account category is further divided in `subcategory`.
  AccountCategory? category;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  A human-readable name that has been assigned to this account, either by the account holder or by the institution.
  String? displayName;

  ///  Unique identifier for the object.
  String? id;

  ///  The name of the institution that holds this account.
  String? institutionName;

  ///  The last 4 digits of the account number. If present, this will be 4 numeric characters.
  String? last4;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  AccountObject? object;

  ///  The most recent information about the account's owners.
  AccountOwnershipWrapper? ownership;

  ///  The state of the most recent attempt to refresh the account owners.
  BankConnectionsResourceOwnershipRefresh? ownershipRefresh;

  ///  The list of permissions granted by this account.
  Iterable<AccountPermissions>? permissions;

  ///  The status of the link to the account.
  AccountStatus? status;

  ///  If `category` is `cash`, one of: - `checking` - `savings` - `other`If `category` is `credit`, one of: - `mortgage` - `line_of_credit` - `credit_card` - `other`If `category` is `investment` or `other`, this will be `other`.
  AccountSubcategory? subcategory;

  ///  The list of data refresh subscriptions requested on this account.
  Iterable<AccountSubscriptions>? subscriptions;

  ///  The [PaymentMethod type](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type)(s) that can be created from this account.
  Iterable<AccountSupportedPaymentMethodTypes>? supportedPaymentMethodTypes;

  ///  The state of the most recent attempt to refresh the account transactions.
  BankConnectionsResourceTransactionRefresh? transactionRefresh;

  /// Instantiates a new [Account] and sets the default values.
  Account() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Account createFromDiscriminatorValue(ParseNode parseNode) {
    return Account();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder'] = (node) => accountHolder =
        node.getObjectValue<BankConnectionsResourceAccountholder>(
            BankConnectionsResourceAccountholder.createFromDiscriminatorValue);
    deserializerMap['account_numbers'] = (node) => accountNumbers =
        node.getCollectionOfObjectValues<
                BankConnectionsResourceAccountNumberDetails>(
            BankConnectionsResourceAccountNumberDetails
                .createFromDiscriminatorValue);
    deserializerMap['balance'] = (node) => balance =
        node.getObjectValue<BankConnectionsResourceBalance>(
            BankConnectionsResourceBalance.createFromDiscriminatorValue);
    deserializerMap['balance_refresh'] = (node) => balanceRefresh =
        node.getObjectValue<BankConnectionsResourceBalanceRefresh>(
            BankConnectionsResourceBalanceRefresh.createFromDiscriminatorValue);
    deserializerMap['category'] = (node) => category = node
        .getEnumValue<AccountCategory>((stringValue) => AccountCategory.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['institution_name'] =
        (node) => institutionName = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<AccountObject>((stringValue) => AccountObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['ownership'] = (node) => ownership =
        node.getObjectValue<AccountOwnershipWrapper>(
            AccountOwnershipWrapper.createFromDiscriminatorValue);
    deserializerMap['ownership_refresh'] = (node) => ownershipRefresh =
        node.getObjectValue<BankConnectionsResourceOwnershipRefresh>(
            BankConnectionsResourceOwnershipRefresh
                .createFromDiscriminatorValue);
    deserializerMap['permissions'] = (node) => permissions =
        node.getCollectionOfEnumValues<AccountPermissions>((stringValue) =>
            AccountPermissions.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<AccountStatus>((stringValue) => AccountStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['subcategory'] = (node) => subcategory =
        node.getEnumValue<AccountSubcategory>((stringValue) =>
            AccountSubcategory.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['subscriptions'] = (node) => subscriptions =
        node.getCollectionOfEnumValues<AccountSubscriptions>((stringValue) =>
            AccountSubscriptions.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['supported_payment_method_types'] = (node) =>
        supportedPaymentMethodTypes =
            node.getCollectionOfEnumValues<AccountSupportedPaymentMethodTypes>(
                (stringValue) => AccountSupportedPaymentMethodTypes.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['transaction_refresh'] = (node) => transactionRefresh =
        node.getObjectValue<BankConnectionsResourceTransactionRefresh>(
            BankConnectionsResourceTransactionRefresh
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BankConnectionsResourceAccountholder>(
        'account_holder', accountHolder);
    writer.writeCollectionOfObjectValues<
            BankConnectionsResourceAccountNumberDetails>(
        'account_numbers', accountNumbers);
    writer.writeObjectValue<BankConnectionsResourceBalance>('balance', balance);
    writer.writeObjectValue<BankConnectionsResourceBalanceRefresh>(
        'balance_refresh', balanceRefresh);
    writer.writeEnumValue<AccountCategory>(
        'category', category, (e) => e?.value);
    writer.writeIntValue('created', created);
    writer.writeStringValue('display_name', displayName);
    writer.writeStringValue('id', id);
    writer.writeStringValue('institution_name', institutionName);
    writer.writeStringValue('last4', last4);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<AccountObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<AccountOwnershipWrapper>('ownership', ownership);
    writer.writeObjectValue<BankConnectionsResourceOwnershipRefresh>(
        'ownership_refresh', ownershipRefresh);
    writer.writeCollectionOfEnumValues<AccountPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeEnumValue<AccountStatus>('status', status, (e) => e?.value);
    writer.writeEnumValue<AccountSubcategory>(
        'subcategory', subcategory, (e) => e?.value);
    writer.writeCollectionOfEnumValues<AccountSubscriptions>(
        'subscriptions', subscriptions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<AccountSupportedPaymentMethodTypes>(
        'supported_payment_method_types',
        supportedPaymentMethodTypes,
        (e) => e?.value);
    writer.writeObjectValue<BankConnectionsResourceTransactionRefresh>(
        'transaction_refresh', transactionRefresh);
    writer.writeAdditionalData(additionalData);
  }
}
