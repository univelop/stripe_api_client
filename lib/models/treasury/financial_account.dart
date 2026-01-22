// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../treasury_financial_accounts_resource_balance.dart';
import '../treasury_financial_accounts_resource_financial_address.dart';
import '../treasury_financial_accounts_resource_platform_restrictions.dart';
import '../treasury_financial_accounts_resource_status_details.dart';
import './financial_account_active_features.dart';
import './financial_account_features.dart';
import './financial_account_metadata.dart';
import './financial_account_object.dart';
import './financial_account_pending_features.dart';
import './financial_account_restricted_features.dart';
import './financial_account_status.dart';

/// auto generated
/// Stripe Treasury provides users with a container for money called a FinancialAccount that is separate from their Payments balance.FinancialAccounts serve as the source and destination of Treasury’s money movement APIs.
class FinancialAccount implements AdditionalDataHolder, Parsable {
  ///  The array of paths to active Features in the Features hash.
  Iterable<FinancialAccountActiveFeatures>? activeFeatures;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Balance information for the FinancialAccount
  TreasuryFinancialAccountsResourceBalance? balance;

  ///  Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  String? country;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.Stripe or the platform can control Features via the requested field.
  FinancialAccountFeatures? features;

  ///  The set of credentials that resolve to a FinancialAccount.
  Iterable<TreasuryFinancialAccountsResourceFinancialAddress>?
      financialAddresses;

  ///  Unique identifier for the object.
  String? id;

  ///  The is_default property
  bool? isDefault;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  FinancialAccountMetadata? metadata;

  ///  The nickname for the FinancialAccount.
  String? nickname;

  ///  String representing the object's type. Objects of the same type share the same value.
  FinancialAccountObject? object;

  ///  The array of paths to pending Features in the Features hash.
  Iterable<FinancialAccountPendingFeatures>? pendingFeatures;

  ///  The set of functionalities that the platform can restrict on the FinancialAccount.
  TreasuryFinancialAccountsResourcePlatformRestrictions? platformRestrictions;

  ///  The array of paths to restricted Features in the Features hash.
  Iterable<FinancialAccountRestrictedFeatures>? restrictedFeatures;

  ///  Status of this FinancialAccount.
  FinancialAccountStatus? status;

  ///  The status_details property
  TreasuryFinancialAccountsResourceStatusDetails? statusDetails;

  ///  The currencies the FinancialAccount can hold a balance in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
  Iterable<String>? supportedCurrencies;

  /// Instantiates a new [FinancialAccount] and sets the default values.
  FinancialAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinancialAccount createFromDiscriminatorValue(ParseNode parseNode) {
    return FinancialAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active_features'] = (node) => activeFeatures =
        node.getCollectionOfEnumValues<FinancialAccountActiveFeatures>(
            (stringValue) => FinancialAccountActiveFeatures.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['balance'] = (node) => balance = node.getObjectValue<
            TreasuryFinancialAccountsResourceBalance>(
        TreasuryFinancialAccountsResourceBalance.createFromDiscriminatorValue);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['features'] = (node) => features =
        node.getObjectValue<FinancialAccountFeatures>(
            FinancialAccountFeatures.createFromDiscriminatorValue);
    deserializerMap['financial_addresses'] = (node) => financialAddresses =
        node.getCollectionOfObjectValues<
                TreasuryFinancialAccountsResourceFinancialAddress>(
            TreasuryFinancialAccountsResourceFinancialAddress
                .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['is_default'] = (node) => isDefault = node.getBoolValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<FinancialAccountMetadata>(
            FinancialAccountMetadata.createFromDiscriminatorValue);
    deserializerMap['nickname'] = (node) => nickname = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<FinancialAccountObject>((stringValue) =>
            FinancialAccountObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['pending_features'] = (node) => pendingFeatures =
        node.getCollectionOfEnumValues<FinancialAccountPendingFeatures>(
            (stringValue) => FinancialAccountPendingFeatures.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['platform_restrictions'] = (node) => platformRestrictions =
        node.getObjectValue<
                TreasuryFinancialAccountsResourcePlatformRestrictions>(
            TreasuryFinancialAccountsResourcePlatformRestrictions
                .createFromDiscriminatorValue);
    deserializerMap['restricted_features'] = (node) => restrictedFeatures =
        node.getCollectionOfEnumValues<FinancialAccountRestrictedFeatures>(
            (stringValue) => FinancialAccountRestrictedFeatures.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<FinancialAccountStatus>((stringValue) =>
            FinancialAccountStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status_details'] = (node) => statusDetails =
        node.getObjectValue<TreasuryFinancialAccountsResourceStatusDetails>(
            TreasuryFinancialAccountsResourceStatusDetails
                .createFromDiscriminatorValue);
    deserializerMap['supported_currencies'] = (node) =>
        supportedCurrencies = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<FinancialAccountActiveFeatures>(
        'active_features', activeFeatures, (e) => e?.value);
    writer.writeObjectValue<TreasuryFinancialAccountsResourceBalance>(
        'balance', balance);
    writer.writeStringValue('country', country);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<FinancialAccountFeatures>('features', features);
    writer.writeCollectionOfObjectValues<
            TreasuryFinancialAccountsResourceFinancialAddress>(
        'financial_addresses', financialAddresses);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('is_default', value: isDefault);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<FinancialAccountMetadata>('metadata', metadata);
    writer.writeStringValue('nickname', nickname);
    writer.writeEnumValue<FinancialAccountObject>(
        'object', object, (e) => e?.value);
    writer.writeCollectionOfEnumValues<FinancialAccountPendingFeatures>(
        'pending_features', pendingFeatures, (e) => e?.value);
    writer.writeObjectValue<
            TreasuryFinancialAccountsResourcePlatformRestrictions>(
        'platform_restrictions', platformRestrictions);
    writer.writeCollectionOfEnumValues<FinancialAccountRestrictedFeatures>(
        'restricted_features', restrictedFeatures, (e) => e?.value);
    writer.writeEnumValue<FinancialAccountStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<TreasuryFinancialAccountsResourceStatusDetails>(
        'status_details', statusDetails);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'supported_currencies', supportedCurrencies);
    writer.writeAdditionalData(additionalData);
  }
}
