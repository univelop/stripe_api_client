// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_interac_present_read_method.dart';
import './payment_method_details_interac_present_receipt.dart';

/// auto generated
class PaymentMethodDetailsInteracPresent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Card brand. Can be `interac`, `mastercard` or `visa`.
  String? brand;

  ///  The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
  String? cardholderName;

  ///  Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
  String? country;

  ///  A high-level description of the type of cards issued in this range.
  String? description;

  ///  Authorization response cryptogram.
  String? emvAuthData;

  ///  Two-digit number representing the card's expiration month.
  int? expMonth;

  ///  Four-digit number representing the card's expiration year.
  int? expYear;

  ///  Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.*As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
  String? fingerprint;

  ///  Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
  String? funding;

  ///  ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
  String? generatedCard;

  ///  The name of the card's issuing bank.
  String? issuer;

  ///  The last four digits of the card.
  String? last4;

  ///  Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
  String? network;

  ///  This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
  String? networkTransactionId;

  ///  The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
  Iterable<String>? preferredLocales;

  ///  How card details were read in this transaction.
  PaymentMethodDetailsInteracPresentReadMethod? readMethod;

  ///  A collection of fields required to be displayed on receipts. Only required for EMV transactions.
  PaymentMethodDetailsInteracPresentReceipt? receipt;

  /// Instantiates a new [PaymentMethodDetailsInteracPresent] and sets the default values.
  PaymentMethodDetailsInteracPresent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsInteracPresent createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsInteracPresent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['cardholder_name'] =
        (node) => cardholderName = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['emv_auth_data'] =
        (node) => emvAuthData = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['funding'] = (node) => funding = node.getStringValue();
    deserializerMap['generated_card'] =
        (node) => generatedCard = node.getStringValue();
    deserializerMap['issuer'] = (node) => issuer = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['network'] = (node) => network = node.getStringValue();
    deserializerMap['network_transaction_id'] =
        (node) => networkTransactionId = node.getStringValue();
    deserializerMap['preferred_locales'] = (node) =>
        preferredLocales = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['read_method'] = (node) => readMethod =
        node.getEnumValue<PaymentMethodDetailsInteracPresentReadMethod>(
            (stringValue) => PaymentMethodDetailsInteracPresentReadMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['receipt'] = (node) => receipt = node.getObjectValue<
            PaymentMethodDetailsInteracPresentReceipt>(
        PaymentMethodDetailsInteracPresentReceipt.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('brand', brand);
    writer.writeStringValue('cardholder_name', cardholderName);
    writer.writeStringValue('country', country);
    writer.writeStringValue('description', description);
    writer.writeStringValue('emv_auth_data', emvAuthData);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('funding', funding);
    writer.writeStringValue('generated_card', generatedCard);
    writer.writeStringValue('issuer', issuer);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('network', network);
    writer.writeStringValue('network_transaction_id', networkTransactionId);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'preferred_locales', preferredLocales);
    writer.writeEnumValue<PaymentMethodDetailsInteracPresentReadMethod>(
        'read_method', readMethod, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodDetailsInteracPresentReceipt>(
        'receipt', receipt);
    writer.writeAdditionalData(additionalData);
  }
}
