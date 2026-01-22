// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_business_profile.dart';
import './account_business_type.dart';
import './account_capabilities.dart';
import './account_external_accounts.dart';
import './account_future_requirements.dart';
import './account_group_membership.dart';
import './account_metadata.dart';
import './account_object.dart';
import './account_requirements.dart';
import './account_settings.dart';
import './account_tos_acceptance.dart';
import './account_type.dart';
import './account_unification_account_controller.dart';
import './legal_entity_company.dart';
import './person.dart';

/// auto generated
/// This is an object representing a Stripe account. You can retrieve it to seeproperties on the account like its current requirements or if the account isenabled to make live charges or receive payouts.For accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection)is `application`, which includes Custom accounts, the properties below are alwaysreturned.For accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection)is `stripe`, which includes Standard and Express accounts, some properties are only returneduntil you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions)to start Connect Onboarding. Learn about the [differences between accounts](/connect/accounts).
class Account implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Business information about the account.
  AccountBusinessProfile? businessProfile;

  ///  The business type.
  AccountBusinessType? businessType;

  ///  The capabilities property
  AccountCapabilities? capabilities;

  ///  Whether the account can process charges.
  bool? chargesEnabled;

  ///  The company property
  LegalEntityCompany? company;

  ///  The controller property
  AccountUnificationAccountController? controller;

  ///  The account's country.
  String? country;

  ///  Time at which the account was connected. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
  String? defaultCurrency;

  ///  Whether account details have been submitted. Accounts with Stripe Dashboard access, which includes Standard accounts, cannot receive payouts before this is true. Accounts where this is false should be directed to [an onboarding flow](/connect/onboarding) to finish submitting account details.
  bool? detailsSubmitted;

  ///  An email address associated with the account. It's not used for authentication and Stripe doesn't market to this field without explicit approval from the platform.
  String? email;

  ///  External accounts (bank accounts and debit cards) currently attached to this account. External accounts are only returned for requests where `controller[is_controller]` is true.
  AccountExternalAccounts? externalAccounts;

  ///  The future_requirements property
  AccountFutureRequirements? futureRequirements;

  ///  The groups associated with the account.
  AccountGroupMembership? groups;

  ///  Unique identifier for the object.
  String? id;

  ///  This is an object representing a person associated with a Stripe account.A platform can only access a subset of data in a person for an account where [account.controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.See the [Standard onboarding](/connect/standard-accounts) or [Express onboarding](/connect/express-accounts) documentation for information about prefilling information and account onboarding steps. Learn more about [handling identity verification with the API](/connect/handling-api-verification#person-information).
  Person? individual;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  AccountMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  Account_object? object;

  ///  Whether the funds in this account can be paid out.
  bool? payoutsEnabled;

  ///  The requirements property
  AccountRequirements? requirements;

  ///  Options for customizing how the account functions within Stripe.
  AccountSettings? settings;

  ///  The tos_acceptance property
  AccountTosAcceptance? tosAcceptance;

  ///  The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
  AccountType? type_;

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
    deserializerMap['business_profile'] = (node) => businessProfile =
        node.getObjectValue<AccountBusinessProfile>(
            AccountBusinessProfile.createFromDiscriminatorValue);
    deserializerMap['business_type'] = (node) => businessType =
        node.getEnumValue<AccountBusinessType>((stringValue) =>
            AccountBusinessType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['capabilities'] = (node) => capabilities =
        node.getObjectValue<AccountCapabilities>(
            AccountCapabilities.createFromDiscriminatorValue);
    deserializerMap['charges_enabled'] =
        (node) => chargesEnabled = node.getBoolValue();
    deserializerMap['company'] = (node) => company =
        node.getObjectValue<LegalEntityCompany>(
            LegalEntityCompany.createFromDiscriminatorValue);
    deserializerMap['controller'] = (node) => controller =
        node.getObjectValue<AccountUnificationAccountController>(
            AccountUnificationAccountController.createFromDiscriminatorValue);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['default_currency'] =
        (node) => defaultCurrency = node.getStringValue();
    deserializerMap['details_submitted'] =
        (node) => detailsSubmitted = node.getBoolValue();
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['external_accounts'] = (node) => externalAccounts =
        node.getObjectValue<AccountExternalAccounts>(
            AccountExternalAccounts.createFromDiscriminatorValue);
    deserializerMap['future_requirements'] = (node) => futureRequirements =
        node.getObjectValue<AccountFutureRequirements>(
            AccountFutureRequirements.createFromDiscriminatorValue);
    deserializerMap['groups'] = (node) => groups =
        node.getObjectValue<AccountGroupMembership>(
            AccountGroupMembership.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['individual'] = (node) => individual =
        node.getObjectValue<Person>(Person.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<AccountMetadata>(
            AccountMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<Account_object>((stringValue) => Account_object.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['payouts_enabled'] =
        (node) => payoutsEnabled = node.getBoolValue();
    deserializerMap['requirements'] = (node) => requirements =
        node.getObjectValue<AccountRequirements>(
            AccountRequirements.createFromDiscriminatorValue);
    deserializerMap['settings'] = (node) => settings =
        node.getObjectValue<AccountSettings>(
            AccountSettings.createFromDiscriminatorValue);
    deserializerMap['tos_acceptance'] = (node) => tosAcceptance =
        node.getObjectValue<AccountTosAcceptance>(
            AccountTosAcceptance.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<AccountType>(
        (stringValue) => AccountType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountBusinessProfile>(
        'business_profile', businessProfile);
    writer.writeEnumValue<AccountBusinessType>(
        'business_type', businessType, (e) => e?.value);
    writer.writeObjectValue<AccountCapabilities>('capabilities', capabilities);
    writer.writeBoolValue('charges_enabled', value: chargesEnabled);
    writer.writeObjectValue<LegalEntityCompany>('company', company);
    writer.writeObjectValue<AccountUnificationAccountController>(
        'controller', controller);
    writer.writeStringValue('country', country);
    writer.writeIntValue('created', created);
    writer.writeStringValue('default_currency', defaultCurrency);
    writer.writeBoolValue('details_submitted', value: detailsSubmitted);
    writer.writeStringValue('email', email);
    writer.writeObjectValue<AccountExternalAccounts>(
        'external_accounts', externalAccounts);
    writer.writeObjectValue<AccountFutureRequirements>(
        'future_requirements', futureRequirements);
    writer.writeObjectValue<AccountGroupMembership>('groups', groups);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<Person>('individual', individual);
    writer.writeObjectValue<AccountMetadata>('metadata', metadata);
    writer.writeEnumValue<Account_object>('object', object, (e) => e?.value);
    writer.writeBoolValue('payouts_enabled', value: payoutsEnabled);
    writer.writeObjectValue<AccountRequirements>('requirements', requirements);
    writer.writeObjectValue<AccountSettings>('settings', settings);
    writer.writeObjectValue<AccountTosAcceptance>(
        'tos_acceptance', tosAcceptance);
    writer.writeEnumValue<AccountType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
