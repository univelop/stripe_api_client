// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './card_account.dart';
import './card_allow_redisplay.dart';
import './card_available_payout_methods.dart';
import './card_customer.dart';
import './card_metadata.dart';
import './card_object.dart';
import './card_regulated_status.dart';
import './token_card_networks.dart';

/// auto generated
/// You can store multiple cards on a customer in order to charge the customerlater. You can also store multiple debit cards on a recipient in order totransfer to those cards later.Related guide: [Card payments with Sources](https://docs.stripe.com/sources/cards)
class Card implements AdditionalDataHolder, Parsable {
  ///  The account property
  CardAccount? account;

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

  ///  This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
  CardAllowRedisplay? allowRedisplay;

  ///  A set of available payout methods for this card. Only values from this set should be passed as the `method` when creating a payout.
  Iterable<CardAvailablePayoutMethods>? availablePayoutMethods;

  ///  Card brand. Can be `American Express`, `Cartes Bancaires`, `Diners Club`, `Discover`, `Eftpos Australia`, `Girocard`, `JCB`, `MasterCard`, `UnionPay`, `Visa`, or `Unknown`.
  String? brand;

  ///  Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
  String? country;

  ///  Three-letter [ISO code for currency](https://www.iso.org/iso-4217-currency-codes.html) in lowercase. Must be a [supported currency](https://docs.stripe.com/currencies). Only applicable on accounts (not customers or recipients). The card can be used as a transfer destination for funds in this currency. This property is only available when returned as an [External Account](/api/external_account_cards/object) where [controller.is_controller](/api/accounts/object#account_object-controller-is_controller) is `true`.
  String? currency;

  ///  The customer that this card belongs to. This attribute will not be in the card object if the card belongs to an account or recipient instead.
  CardCustomer? customer;

  ///  If a CVC was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`. A result of unchecked indicates that CVC was provided but hasn't been checked yet. Checks are typically performed when attaching a card to a Customer object, or when creating a charge. For more details, see [Check if a card is valid without a charge](https://support.stripe.com/questions/check-if-a-card-is-valid-without-a-charge).
  String? cvcCheck;

  ///  Whether this card is the default external account for its currency. This property is only available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
  bool? defaultForCurrency;

  ///  (For tokenized numbers only.) The last four digits of the device account number.
  String? dynamicLast4;

  ///  Two-digit number representing the card's expiration month.
  int? expMonth;

  ///  Four-digit number representing the card's expiration year.
  int? expYear;

  ///  Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.*As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
  String? fingerprint;

  ///  Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
  String? funding;

  ///  Unique identifier for the object.
  String? id;

  ///  Issuer identification number of the card.
  String? iin;

  ///  The last four digits of the card.
  String? last4;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  CardMetadata? metadata;

  ///  Cardholder name.
  String? name;

  ///  The networks property
  TokenCardNetworks? networks;

  ///  String representing the object's type. Objects of the same type share the same value.
  CardObject? object;

  ///  Status of a card based on the card issuer.
  CardRegulatedStatus? regulatedStatus;

  ///  For external accounts that are cards, possible values are `new` and `errored`. If a payout fails, the status is set to `errored` and [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) are stopped until account details are updated.
  String? status;

  ///  If the card number is tokenized, this is the method that was used. Can be `android_pay` (includes Google Pay), `apple_pay`, `masterpass`, `visa_checkout`, or null.
  String? tokenizationMethod;

  /// Instantiates a new [Card] and sets the default values.
  Card() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Card createFromDiscriminatorValue(ParseNode parseNode) {
    return Card();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node
        .getObjectValue<CardAccount>(CardAccount.createFromDiscriminatorValue);
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
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<CardAllowRedisplay>((stringValue) =>
            CardAllowRedisplay.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['available_payout_methods'] = (node) =>
        availablePayoutMethods =
            node.getCollectionOfEnumValues<CardAvailablePayoutMethods>(
                (stringValue) => CardAvailablePayoutMethods.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<CardCustomer>(
            CardCustomer.createFromDiscriminatorValue);
    deserializerMap['cvc_check'] = (node) => cvcCheck = node.getStringValue();
    deserializerMap['default_for_currency'] =
        (node) => defaultForCurrency = node.getBoolValue();
    deserializerMap['dynamic_last4'] =
        (node) => dynamicLast4 = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['funding'] = (node) => funding = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['iin'] = (node) => iin = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CardMetadata>(
            CardMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['networks'] = (node) => networks =
        node.getObjectValue<TokenCardNetworks>(
            TokenCardNetworks.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CardObject>((stringValue) => CardObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['regulated_status'] = (node) => regulatedStatus =
        node.getEnumValue<CardRegulatedStatus>((stringValue) =>
            CardRegulatedStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['tokenization_method'] =
        (node) => tokenizationMethod = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CardAccount>('account', account);
    writer.writeStringValue('address_city', addressCity);
    writer.writeStringValue('address_country', addressCountry);
    writer.writeStringValue('address_line1', addressLine1);
    writer.writeStringValue('address_line1_check', addressLine1Check);
    writer.writeStringValue('address_line2', addressLine2);
    writer.writeStringValue('address_state', addressState);
    writer.writeStringValue('address_zip', addressZip);
    writer.writeStringValue('address_zip_check', addressZipCheck);
    writer.writeEnumValue<CardAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeCollectionOfEnumValues<CardAvailablePayoutMethods>(
        'available_payout_methods', availablePayoutMethods, (e) => e?.value);
    writer.writeStringValue('brand', brand);
    writer.writeStringValue('country', country);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<CardCustomer>('customer', customer);
    writer.writeStringValue('cvc_check', cvcCheck);
    writer.writeBoolValue('default_for_currency', value: defaultForCurrency);
    writer.writeStringValue('dynamic_last4', dynamicLast4);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('funding', funding);
    writer.writeStringValue('id', id);
    writer.writeStringValue('iin', iin);
    writer.writeStringValue('last4', last4);
    writer.writeObjectValue<CardMetadata>('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<TokenCardNetworks>('networks', networks);
    writer.writeEnumValue<CardObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<CardRegulatedStatus>(
        'regulated_status', regulatedStatus, (e) => e?.value);
    writer.writeStringValue('status', status);
    writer.writeStringValue('tokenization_method', tokenizationMethod);
    writer.writeAdditionalData(additionalData);
  }
}
