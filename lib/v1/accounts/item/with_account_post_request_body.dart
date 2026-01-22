// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_business_profile.dart';
import './with_account_post_request_body_business_type.dart';
import './with_account_post_request_body_capabilities.dart';
import './with_account_post_request_body_company.dart';
import './with_account_post_request_body_documents.dart';
import './with_account_post_request_body_groups.dart';
import './with_account_post_request_body_individual.dart';
import './with_account_post_request_body_settings.dart';
import './with_account_post_request_body_tos_acceptance.dart';

/// auto generated
class WithAccountPostRequestBody implements Parsable {
  ///  An [account token](https://api.stripe.com#create_account_token), used to securely provide details to the account.
  String? accountToken;

  ///  Business information about the account.
  WithAccountPostRequestBodyBusinessProfile? businessProfile;

  ///  The business type. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
  WithAccountPostRequestBodyBusinessType? businessType;

  ///  Each key of the dictionary represents a capability, and each capabilitymaps to its settings (for example, whether it has been requested or not). Eachcapability is inactive until you have provided its specificrequirements and Stripe has verified them. An account might have someof its requested capabilities be active and some be inactive.Required when [account.controller.stripe_dashboard.type](/api/accounts/create#create_account-controller-dashboard-type)is `none`, which includes Custom accounts.
  WithAccountPostRequestBodyCapabilities? capabilities;

  ///  Information about the company or business. This field is available for any `business_type`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
  WithAccountPostRequestBodyCompany? company;

  ///  Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://docs.stripe.com/payouts).
  String? defaultCurrency;

  ///  Documents that may be submitted to satisfy various informational requests.
  WithAccountPostRequestBodyDocuments? documents;

  ///  The email address of the account holder. This is only to make the account easier to identify to you. If [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, Stripe doesn't email the account without your consent.
  String? email;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A card or bank account to attach to the account for receiving [payouts](/connect/bank-debit-card-payouts) (you won’t be able to use it for top-ups). You can provide either a token, like the ones returned by [Stripe.js](/js), or a dictionary, as documented in the `external_account` parameter for [bank account](/api#account_create_bank_account) creation. <br><br>By default, providing an external account sets it as the new default external account for its currency, and deletes the old default if one exists. To add additional external accounts without replacing the existing default for the currency, use the [bank account](/api#account_create_bank_account) or [card creation](/api#account_create_card) APIs. After you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
  String? externalAccount;

  ///  A hash of account group type to tokens. These are account groups this account should be added to.
  WithAccountPostRequestBodyGroups? groups;

  ///  Information about the person represented by the account. This field is null unless `business_type` is set to `individual`. Once you create an [Account Link](/api/account_links) or [Account Session](/api/account_sessions), this property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
  WithAccountPostRequestBodyIndividual? individual;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Options for customizing how the account functions within Stripe.
  WithAccountPostRequestBodySettings? settings;

  ///  Details on the account's acceptance of the [Stripe Services Agreement](/connect/updating-accounts#tos-acceptance). This property can only be updated for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. This property defaults to a `full` service agreement when empty.
  WithAccountPostRequestBodyTosAcceptance? tosAcceptance;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithAccountPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_token'] =
        (node) => accountToken = node.getStringValue();
    deserializerMap['business_profile'] = (node) => businessProfile =
        node.getObjectValue<WithAccountPostRequestBodyBusinessProfile>(
            WithAccountPostRequestBodyBusinessProfile
                .createFromDiscriminatorValue);
    deserializerMap['business_type'] = (node) => businessType =
        node.getEnumValue<WithAccountPostRequestBodyBusinessType>(
            (stringValue) => WithAccountPostRequestBodyBusinessType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['capabilities'] = (node) => capabilities =
        node.getObjectValue<WithAccountPostRequestBodyCapabilities>(
            WithAccountPostRequestBodyCapabilities
                .createFromDiscriminatorValue);
    deserializerMap['company'] = (node) => company =
        node.getObjectValue<WithAccountPostRequestBodyCompany>(
            WithAccountPostRequestBodyCompany.createFromDiscriminatorValue);
    deserializerMap['default_currency'] =
        (node) => defaultCurrency = node.getStringValue();
    deserializerMap['documents'] = (node) => documents =
        node.getObjectValue<WithAccountPostRequestBodyDocuments>(
            WithAccountPostRequestBodyDocuments.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['external_account'] =
        (node) => externalAccount = node.getStringValue();
    deserializerMap['groups'] = (node) => groups =
        node.getObjectValue<WithAccountPostRequestBodyGroups>(
            WithAccountPostRequestBodyGroups.createFromDiscriminatorValue);
    deserializerMap['individual'] = (node) => individual =
        node.getObjectValue<WithAccountPostRequestBodyIndividual>(
            WithAccountPostRequestBodyIndividual.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['settings'] = (node) => settings =
        node.getObjectValue<WithAccountPostRequestBodySettings>(
            WithAccountPostRequestBodySettings.createFromDiscriminatorValue);
    deserializerMap['tos_acceptance'] = (node) => tosAcceptance =
        node.getObjectValue<WithAccountPostRequestBodyTosAcceptance>(
            WithAccountPostRequestBodyTosAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_token', accountToken);
    writer.writeObjectValue<WithAccountPostRequestBodyBusinessProfile>(
        'business_profile', businessProfile);
    writer.writeEnumValue<WithAccountPostRequestBodyBusinessType>(
        'business_type', businessType, (e) => e?.value);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilities>(
        'capabilities', capabilities);
    writer.writeObjectValue<WithAccountPostRequestBodyCompany>(
        'company', company);
    writer.writeStringValue('default_currency', defaultCurrency);
    writer.writeObjectValue<WithAccountPostRequestBodyDocuments>(
        'documents', documents);
    writer.writeStringValue('email', email);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('external_account', externalAccount);
    writer.writeObjectValue<WithAccountPostRequestBodyGroups>('groups', groups);
    writer.writeObjectValue<WithAccountPostRequestBodyIndividual>(
        'individual', individual);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<WithAccountPostRequestBodySettings>(
        'settings', settings);
    writer.writeObjectValue<WithAccountPostRequestBodyTosAcceptance>(
        'tos_acceptance', tosAcceptance);
  }
}
