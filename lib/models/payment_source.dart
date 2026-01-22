// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_business_profile.dart';
import './account_capabilities.dart';
import './account_future_requirements.dart';
import './account_group_membership.dart';
import './account_requirements.dart';
import './account_settings.dart';
import './account_tos_acceptance.dart';
import './account_unification_account_controller.dart';
import './legal_entity_company.dart';
import './payment_source_account.dart';
import './payment_source_allow_redisplay.dart';
import './payment_source_available_payout_methods.dart';
import './payment_source_business_type.dart';
import './payment_source_customer.dart';
import './payment_source_external_accounts.dart';
import './payment_source_metadata.dart';
import './payment_source_object.dart';
import './payment_source_regulated_status.dart';
import './payment_source_type.dart';
import './person.dart';
import './source_code_verification_flow.dart';
import './source_order.dart';
import './source_owner.dart';
import './source_receiver_flow.dart';
import './source_redirect_flow.dart';
import './source_type_ach_credit_transfer.dart';
import './source_type_ach_debit.dart';
import './source_type_acss_debit.dart';
import './source_type_alipay.dart';
import './source_type_au_becs_debit.dart';
import './source_type_bancontact.dart';
import './source_type_card.dart';
import './source_type_card_present.dart';
import './source_type_eps.dart';
import './source_type_giropay.dart';
import './source_type_ideal.dart';
import './source_type_klarna.dart';
import './source_type_multibanco.dart';
import './source_type_p24.dart';
import './source_type_sepa_debit.dart';
import './source_type_sofort.dart';
import './source_type_three_d_secure.dart';
import './source_type_wechat.dart';
import './token_card_networks.dart';

/// auto generated
class PaymentSource implements AdditionalDataHolder, Parsable {
  ///  The account this bank account belongs to. Only applicable on Accounts (not customers or recipients) This property is only available when returned as an [External Account](/api/external_account_bank_accounts/object) where [controller.is_controller](/api/accounts/object#account_object-controller-is_controller) is `true`.
  PaymentSourceAccount? account;

  ///  The name of the person or business that owns the bank account.
  String? accountHolderName;

  ///  The type of entity that holds the account. This can be either `individual` or `company`.
  String? accountHolderType;

  ///  The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
  String? accountType;

  ///  The ach_credit_transfer property
  SourceTypeAchCreditTransfer? achCreditTransfer;

  ///  The ach_debit property
  SourceTypeAchDebit? achDebit;

  ///  The acss_debit property
  SourceTypeAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  City/District/Suburb/Town/Village.
  String? addressCity;

  ///  Billing address country, if provided when creating card.
  String? addressCountry;

  ///  Address line 1 (Street address/PO Box/Company name).
  String? addressLine1;

  ///  If `address_line1` was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`.
  String? addressLine1Check;

  ///  Address line 2 (Apartment/Suite/Unit/Building).
  String? addressLine2;

  ///  State/County/Province/Region.
  String? addressState;

  ///  ZIP or postal code.
  String? addressZip;

  ///  If `address_zip` was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`.
  String? addressZipCheck;

  ///  The alipay property
  SourceTypeAlipay? alipay;

  ///  This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
  PaymentSourceAllowRedisplay? allowRedisplay;

  ///  A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources.
  int? amount;

  ///  The au_becs_debit property
  SourceTypeAuBecsDebit? auBecsDebit;

  ///  A set of available payout methods for this bank account. Only values from this set should be passed as the `method` when creating a payout.
  Iterable<PaymentSourceAvailablePayoutMethods>? availablePayoutMethods;

  ///  The bancontact property
  SourceTypeBancontact? bancontact;

  ///  Name of the bank associated with the routing number (e.g., `WELLS FARGO`).
  String? bankName;

  ///  Card brand. Can be `American Express`, `Cartes Bancaires`, `Diners Club`, `Discover`, `Eftpos Australia`, `Girocard`, `JCB`, `MasterCard`, `UnionPay`, `Visa`, or `Unknown`.
  String? brand;

  ///  Business information about the account.
  AccountBusinessProfile? businessProfile;

  ///  The business type.
  PaymentSourceBusinessType? businessType;

  ///  The capabilities property
  AccountCapabilities? capabilities;

  ///  The card property
  SourceTypeCard? card;

  ///  The card_present property
  SourceTypeCardPresent? cardPresent;

  ///  Whether the account can process charges.
  bool? chargesEnabled;

  ///  The client secret of the source. Used for client-side retrieval using a publishable key.
  String? clientSecret;

  ///  The code_verification property
  SourceCodeVerificationFlow? codeVerification;

  ///  The company property
  LegalEntityCompany? company;

  ///  The controller property
  AccountUnificationAccountController? controller;

  ///  The account's country.
  String? country;

  ///  Time at which the account was connected. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
  String? currency;

  ///  The ID of the customer that the bank account is associated with.
  PaymentSourceCustomer? customer;

  ///  If a CVC was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`. A result of unchecked indicates that CVC was provided but hasn't been checked yet. Checks are typically performed when attaching a card to a Customer object, or when creating a charge. For more details, see [Check if a card is valid without a charge](https://support.stripe.com/questions/check-if-a-card-is-valid-without-a-charge).
  String? cvcCheck;

  ///  Three-letter ISO currency code representing the default currency for the account. This must be a currency that [Stripe supports in the account's country](https://stripe.com/docs/payouts).
  String? defaultCurrency;

  ///  Whether this bank account is the default external account for its currency.
  bool? defaultForCurrency;

  ///  Whether account details have been submitted. Accounts with Stripe Dashboard access, which includes Standard accounts, cannot receive payouts before this is true. Accounts where this is false should be directed to [an onboarding flow](/connect/onboarding) to finish submitting account details.
  bool? detailsSubmitted;

  ///  (For tokenized numbers only.) The last four digits of the device account number.
  String? dynamicLast4;

  ///  An email address associated with the account. It's not used for authentication and Stripe doesn't market to this field without explicit approval from the platform.
  String? email;

  ///  The eps property
  SourceTypeEps? eps;

  ///  Two-digit number representing the card's expiration month.
  int? expMonth;

  ///  Four-digit number representing the card's expiration year.
  int? expYear;

  ///  External accounts (bank accounts and debit cards) currently attached to this account. External accounts are only returned for requests where `controller[is_controller]` is true.
  PaymentSourceExternalAccounts? externalAccounts;

  ///  Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  String? fingerprint;

  ///  The authentication `flow` of the source. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`.
  String? flow;

  ///  Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
  String? funding;

  ///  The future_requirements property
  AccountFutureRequirements? futureRequirements;

  ///  The giropay property
  SourceTypeGiropay? giropay;

  ///  The groups associated with the account.
  AccountGroupMembership? groups;

  ///  Unique identifier for the object.
  String? id;

  ///  The ideal property
  SourceTypeIdeal? ideal;

  ///  Issuer identification number of the card.
  String? iin;

  ///  This is an object representing a person associated with a Stripe account.A platform can only access a subset of data in a person for an account where [account.controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.See the [Standard onboarding](/connect/standard-accounts) or [Express onboarding](/connect/express-accounts) documentation for information about prefilling information and account onboarding steps. Learn more about [handling identity verification with the API](/connect/handling-api-verification#person-information).
  Person? individual;

  ///  The klarna property
  SourceTypeKlarna? klarna;

  ///  The last four digits of the bank account number.
  String? last4;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PaymentSourceMetadata? metadata;

  ///  The multibanco property
  SourceTypeMultibanco? multibanco;

  ///  Cardholder name.
  String? name;

  ///  The networks property
  TokenCardNetworks? networks;

  ///  String representing the object's type. Objects of the same type share the same value.
  PaymentSourceObject? object;

  ///  Information about the owner of the payment instrument that may be used or required by particular source types.
  SourceOwner? owner;

  ///  The p24 property
  SourceTypeP24? p24;

  ///  Whether the funds in this account can be paid out.
  bool? payoutsEnabled;

  ///  The receiver property
  SourceReceiverFlow? receiver;

  ///  The redirect property
  SourceRedirectFlow? redirect;

  ///  Status of a card based on the card issuer.
  PaymentSourceRegulatedStatus? regulatedStatus;

  ///  The requirements property
  AccountRequirements? requirements;

  ///  The routing transit number for the bank account.
  String? routingNumber;

  ///  The sepa_debit property
  SourceTypeSepaDebit? sepaDebit;

  ///  Options for customizing how the account functions within Stripe.
  AccountSettings? settings;

  ///  The sofort property
  SourceTypeSofort? sofort;

  ///  The source_order property
  SourceOrder? sourceOrder;

  ///  Extra information about a source. This will appear on your customer's statement every time you charge the source.
  String? statementDescriptor;

  ///  For bank accounts, possible values are `new`, `validated`, `verified`, `verification_failed`, `tokenized_account_number_deactivated` or `errored`. A bank account that hasn't had any activity or validation performed is `new`. If Stripe can determine that the bank account exists, its status will be `validated`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be `verified`. If the verification failed for any reason, such as microdeposit failure, the status will be `verification_failed`. If the status is `tokenized_account_number_deactivated`, the account utilizes a tokenized account number which has been deactivated due to expiration or revocation. This account will need to be reverified to continue using it for money movement. If a payout sent to this bank account fails, we'll set the status to `errored` and will not continue to send [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) until the bank details are updated.For external accounts, possible values are `new`, `errored`, `verification_failed`, and `tokenized_account_number_deactivated`. If a payout fails, the status is set to `errored` and scheduled payouts are stopped until account details are updated. In the US and India, if we can't [verify the owner of the bank account](https://support.stripe.com/questions/bank-account-ownership-verification), we'll set the status to `verification_failed`. Other validations aren't run against external accounts because they're only used for payouts. This means the other statuses don't apply.
  String? status;

  ///  The three_d_secure property
  SourceTypeThreeDSecure? threeDSecure;

  ///  If the card number is tokenized, this is the method that was used. Can be `android_pay` (includes Google Pay), `apple_pay`, `masterpass`, `visa_checkout`, or null.
  String? tokenizationMethod;

  ///  The tos_acceptance property
  AccountTosAcceptance? tosAcceptance;

  ///  The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
  PaymentSourceType? type_;

  ///  Either `reusable` or `single_use`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned.
  String? usage;

  ///  The wechat property
  SourceTypeWechat? wechat;

  /// Instantiates a new [PaymentSource] and sets the default values.
  PaymentSource() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentSource createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentSource();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account =
        node.getObjectValue<PaymentSourceAccount>(
            PaymentSourceAccount.createFromDiscriminatorValue);
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['account_holder_type'] =
        (node) => accountHolderType = node.getStringValue();
    deserializerMap['account_type'] =
        (node) => accountType = node.getStringValue();
    deserializerMap['ach_credit_transfer'] = (node) => achCreditTransfer =
        node.getObjectValue<SourceTypeAchCreditTransfer>(
            SourceTypeAchCreditTransfer.createFromDiscriminatorValue);
    deserializerMap['ach_debit'] = (node) => achDebit =
        node.getObjectValue<SourceTypeAchDebit>(
            SourceTypeAchDebit.createFromDiscriminatorValue);
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<SourceTypeAcssDebit>(
            SourceTypeAcssDebit.createFromDiscriminatorValue);
    deserializerMap['address_city'] =
        (node) => addressCity = node.getStringValue();
    deserializerMap['address_country'] =
        (node) => addressCountry = node.getStringValue();
    deserializerMap['address_line1'] =
        (node) => addressLine1 = node.getStringValue();
    deserializerMap['address_line1_check'] =
        (node) => addressLine1Check = node.getStringValue();
    deserializerMap['address_line2'] =
        (node) => addressLine2 = node.getStringValue();
    deserializerMap['address_state'] =
        (node) => addressState = node.getStringValue();
    deserializerMap['address_zip'] =
        (node) => addressZip = node.getStringValue();
    deserializerMap['address_zip_check'] =
        (node) => addressZipCheck = node.getStringValue();
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<SourceTypeAlipay>(
            SourceTypeAlipay.createFromDiscriminatorValue);
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<PaymentSourceAllowRedisplay>((stringValue) =>
            PaymentSourceAllowRedisplay.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<SourceTypeAuBecsDebit>(
            SourceTypeAuBecsDebit.createFromDiscriminatorValue);
    deserializerMap['available_payout_methods'] = (node) =>
        availablePayoutMethods =
            node.getCollectionOfEnumValues<PaymentSourceAvailablePayoutMethods>(
                (stringValue) => PaymentSourceAvailablePayoutMethods.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['bancontact'] = (node) => bancontact =
        node.getObjectValue<SourceTypeBancontact>(
            SourceTypeBancontact.createFromDiscriminatorValue);
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['business_profile'] = (node) => businessProfile =
        node.getObjectValue<AccountBusinessProfile>(
            AccountBusinessProfile.createFromDiscriminatorValue);
    deserializerMap['business_type'] = (node) => businessType =
        node.getEnumValue<PaymentSourceBusinessType>((stringValue) =>
            PaymentSourceBusinessType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['capabilities'] = (node) => capabilities =
        node.getObjectValue<AccountCapabilities>(
            AccountCapabilities.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<SourceTypeCard>(
            SourceTypeCard.createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<SourceTypeCardPresent>(
            SourceTypeCardPresent.createFromDiscriminatorValue);
    deserializerMap['charges_enabled'] =
        (node) => chargesEnabled = node.getBoolValue();
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['code_verification'] = (node) => codeVerification =
        node.getObjectValue<SourceCodeVerificationFlow>(
            SourceCodeVerificationFlow.createFromDiscriminatorValue);
    deserializerMap['company'] = (node) => company =
        node.getObjectValue<LegalEntityCompany>(
            LegalEntityCompany.createFromDiscriminatorValue);
    deserializerMap['controller'] = (node) => controller =
        node.getObjectValue<AccountUnificationAccountController>(
            AccountUnificationAccountController.createFromDiscriminatorValue);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<PaymentSourceCustomer>(
            PaymentSourceCustomer.createFromDiscriminatorValue);
    deserializerMap['cvc_check'] = (node) => cvcCheck = node.getStringValue();
    deserializerMap['default_currency'] =
        (node) => defaultCurrency = node.getStringValue();
    deserializerMap['default_for_currency'] =
        (node) => defaultForCurrency = node.getBoolValue();
    deserializerMap['details_submitted'] =
        (node) => detailsSubmitted = node.getBoolValue();
    deserializerMap['dynamic_last4'] =
        (node) => dynamicLast4 = node.getStringValue();
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['eps'] = (node) => eps = node.getObjectValue<SourceTypeEps>(
        SourceTypeEps.createFromDiscriminatorValue);
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['external_accounts'] = (node) => externalAccounts =
        node.getObjectValue<PaymentSourceExternalAccounts>(
            PaymentSourceExternalAccounts.createFromDiscriminatorValue);
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['flow'] = (node) => flow = node.getStringValue();
    deserializerMap['funding'] = (node) => funding = node.getStringValue();
    deserializerMap['future_requirements'] = (node) => futureRequirements =
        node.getObjectValue<AccountFutureRequirements>(
            AccountFutureRequirements.createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<SourceTypeGiropay>(
            SourceTypeGiropay.createFromDiscriminatorValue);
    deserializerMap['groups'] = (node) => groups =
        node.getObjectValue<AccountGroupMembership>(
            AccountGroupMembership.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<SourceTypeIdeal>(
            SourceTypeIdeal.createFromDiscriminatorValue);
    deserializerMap['iin'] = (node) => iin = node.getStringValue();
    deserializerMap['individual'] = (node) => individual =
        node.getObjectValue<Person>(Person.createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<SourceTypeKlarna>(
            SourceTypeKlarna.createFromDiscriminatorValue);
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentSourceMetadata>(
            PaymentSourceMetadata.createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco =
        node.getObjectValue<SourceTypeMultibanco>(
            SourceTypeMultibanco.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['networks'] = (node) => networks =
        node.getObjectValue<TokenCardNetworks>(
            TokenCardNetworks.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PaymentSourceObject>((stringValue) =>
            PaymentSourceObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['owner'] = (node) => owner = node
        .getObjectValue<SourceOwner>(SourceOwner.createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 = node.getObjectValue<SourceTypeP24>(
        SourceTypeP24.createFromDiscriminatorValue);
    deserializerMap['payouts_enabled'] =
        (node) => payoutsEnabled = node.getBoolValue();
    deserializerMap['receiver'] = (node) => receiver =
        node.getObjectValue<SourceReceiverFlow>(
            SourceReceiverFlow.createFromDiscriminatorValue);
    deserializerMap['redirect'] = (node) => redirect =
        node.getObjectValue<SourceRedirectFlow>(
            SourceRedirectFlow.createFromDiscriminatorValue);
    deserializerMap['regulated_status'] = (node) => regulatedStatus =
        node.getEnumValue<PaymentSourceRegulatedStatus>((stringValue) =>
            PaymentSourceRegulatedStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['requirements'] = (node) => requirements =
        node.getObjectValue<AccountRequirements>(
            AccountRequirements.createFromDiscriminatorValue);
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<SourceTypeSepaDebit>(
            SourceTypeSepaDebit.createFromDiscriminatorValue);
    deserializerMap['settings'] = (node) => settings =
        node.getObjectValue<AccountSettings>(
            AccountSettings.createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<SourceTypeSofort>(
            SourceTypeSofort.createFromDiscriminatorValue);
    deserializerMap['source_order'] = (node) => sourceOrder = node
        .getObjectValue<SourceOrder>(SourceOrder.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['three_d_secure'] = (node) => threeDSecure =
        node.getObjectValue<SourceTypeThreeDSecure>(
            SourceTypeThreeDSecure.createFromDiscriminatorValue);
    deserializerMap['tokenization_method'] =
        (node) => tokenizationMethod = node.getStringValue();
    deserializerMap['tos_acceptance'] = (node) => tosAcceptance =
        node.getObjectValue<AccountTosAcceptance>(
            AccountTosAcceptance.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentSourceType>((stringValue) => PaymentSourceType
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['usage'] = (node) => usage = node.getStringValue();
    deserializerMap['wechat'] = (node) => wechat =
        node.getObjectValue<SourceTypeWechat>(
            SourceTypeWechat.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentSourceAccount>('account', account);
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeStringValue('account_holder_type', accountHolderType);
    writer.writeStringValue('account_type', accountType);
    writer.writeObjectValue<SourceTypeAchCreditTransfer>(
        'ach_credit_transfer', achCreditTransfer);
    writer.writeObjectValue<SourceTypeAchDebit>('ach_debit', achDebit);
    writer.writeObjectValue<SourceTypeAcssDebit>('acss_debit', acssDebit);
    writer.writeStringValue('address_city', addressCity);
    writer.writeStringValue('address_country', addressCountry);
    writer.writeStringValue('address_line1', addressLine1);
    writer.writeStringValue('address_line1_check', addressLine1Check);
    writer.writeStringValue('address_line2', addressLine2);
    writer.writeStringValue('address_state', addressState);
    writer.writeStringValue('address_zip', addressZip);
    writer.writeStringValue('address_zip_check', addressZipCheck);
    writer.writeObjectValue<SourceTypeAlipay>('alipay', alipay);
    writer.writeEnumValue<PaymentSourceAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<SourceTypeAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeCollectionOfEnumValues<PaymentSourceAvailablePayoutMethods>(
        'available_payout_methods', availablePayoutMethods, (e) => e?.value);
    writer.writeObjectValue<SourceTypeBancontact>('bancontact', bancontact);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('brand', brand);
    writer.writeObjectValue<AccountBusinessProfile>(
        'business_profile', businessProfile);
    writer.writeEnumValue<PaymentSourceBusinessType>(
        'business_type', businessType, (e) => e?.value);
    writer.writeObjectValue<AccountCapabilities>('capabilities', capabilities);
    writer.writeObjectValue<SourceTypeCard>('card', card);
    writer.writeObjectValue<SourceTypeCardPresent>('card_present', cardPresent);
    writer.writeBoolValue('charges_enabled', value: chargesEnabled);
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeObjectValue<SourceCodeVerificationFlow>(
        'code_verification', codeVerification);
    writer.writeObjectValue<LegalEntityCompany>('company', company);
    writer.writeObjectValue<AccountUnificationAccountController>(
        'controller', controller);
    writer.writeStringValue('country', country);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<PaymentSourceCustomer>('customer', customer);
    writer.writeStringValue('cvc_check', cvcCheck);
    writer.writeStringValue('default_currency', defaultCurrency);
    writer.writeBoolValue('default_for_currency', value: defaultForCurrency);
    writer.writeBoolValue('details_submitted', value: detailsSubmitted);
    writer.writeStringValue('dynamic_last4', dynamicLast4);
    writer.writeStringValue('email', email);
    writer.writeObjectValue<SourceTypeEps>('eps', eps);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeObjectValue<PaymentSourceExternalAccounts>(
        'external_accounts', externalAccounts);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('flow', flow);
    writer.writeStringValue('funding', funding);
    writer.writeObjectValue<AccountFutureRequirements>(
        'future_requirements', futureRequirements);
    writer.writeObjectValue<SourceTypeGiropay>('giropay', giropay);
    writer.writeObjectValue<AccountGroupMembership>('groups', groups);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<SourceTypeIdeal>('ideal', ideal);
    writer.writeStringValue('iin', iin);
    writer.writeObjectValue<Person>('individual', individual);
    writer.writeObjectValue<SourceTypeKlarna>('klarna', klarna);
    writer.writeStringValue('last4', last4);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<PaymentSourceMetadata>('metadata', metadata);
    writer.writeObjectValue<SourceTypeMultibanco>('multibanco', multibanco);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<TokenCardNetworks>('networks', networks);
    writer.writeEnumValue<PaymentSourceObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<SourceOwner>('owner', owner);
    writer.writeObjectValue<SourceTypeP24>('p24', p24);
    writer.writeBoolValue('payouts_enabled', value: payoutsEnabled);
    writer.writeObjectValue<SourceReceiverFlow>('receiver', receiver);
    writer.writeObjectValue<SourceRedirectFlow>('redirect', redirect);
    writer.writeEnumValue<PaymentSourceRegulatedStatus>(
        'regulated_status', regulatedStatus, (e) => e?.value);
    writer.writeObjectValue<AccountRequirements>('requirements', requirements);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeObjectValue<SourceTypeSepaDebit>('sepa_debit', sepaDebit);
    writer.writeObjectValue<AccountSettings>('settings', settings);
    writer.writeObjectValue<SourceTypeSofort>('sofort', sofort);
    writer.writeObjectValue<SourceOrder>('source_order', sourceOrder);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue('status', status);
    writer.writeObjectValue<SourceTypeThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeStringValue('tokenization_method', tokenizationMethod);
    writer.writeObjectValue<AccountTosAcceptance>(
        'tos_acceptance', tosAcceptance);
    writer.writeEnumValue<PaymentSourceType>('type', type_, (e) => e?.value);
    writer.writeStringValue('usage', usage);
    writer.writeObjectValue<SourceTypeWechat>('wechat', wechat);
    writer.writeAdditionalData(additionalData);
  }
}
