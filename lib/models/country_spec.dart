// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './country_spec_object.dart';
import './country_spec_supported_bank_account_currencies.dart';
import './country_spec_verification_fields.dart';

/// auto generated
/// Stripe needs to collect certain pieces of information about each accountcreated. These requirements can differ depending on the account's country. TheCountry Specs API makes these rules available to your integration.You can also view the information from this API call as [an onlineguide](/docs/connect/required-verification-information).
class CountrySpec implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The default currency for this country. This applies to both payment methods and bank accounts.
  String? defaultCurrency;

  ///  Unique identifier for the object. Represented as the ISO country code for this country.
  String? id;

  ///  String representing the object's type. Objects of the same type share the same value.
  CountrySpecObject? object;

  ///  Currencies that can be accepted in the specific country (for transfers).
  CountrySpecSupportedBankAccountCurrencies? supportedBankAccountCurrencies;

  ///  Currencies that can be accepted in the specified country (for payments).
  Iterable<String>? supportedPaymentCurrencies;

  ///  Payment methods available in the specified country. You may need to enable some payment methods (e.g., [ACH](https://stripe.com/docs/ach)) on your account before they appear in this list. The `stripe` payment method refers to [charging through your platform](https://stripe.com/docs/connect/destination-charges).
  Iterable<String>? supportedPaymentMethods;

  ///  Countries that can accept transfers from the specified country.
  Iterable<String>? supportedTransferCountries;

  ///  The verification_fields property
  CountrySpecVerificationFields? verificationFields;

  /// Instantiates a new [CountrySpec] and sets the default values.
  CountrySpec() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CountrySpec createFromDiscriminatorValue(ParseNode parseNode) {
    return CountrySpec();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_currency'] =
        (node) => defaultCurrency = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CountrySpecObject>((stringValue) => CountrySpecObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['supported_bank_account_currencies'] = (node) =>
        supportedBankAccountCurrencies =
            node.getObjectValue<CountrySpecSupportedBankAccountCurrencies>(
                CountrySpecSupportedBankAccountCurrencies
                    .createFromDiscriminatorValue);
    deserializerMap['supported_payment_currencies'] = (node) =>
        supportedPaymentCurrencies =
            node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['supported_payment_methods'] = (node) =>
        supportedPaymentMethods = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['supported_transfer_countries'] = (node) =>
        supportedTransferCountries =
            node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['verification_fields'] = (node) => verificationFields =
        node.getObjectValue<CountrySpecVerificationFields>(
            CountrySpecVerificationFields.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('default_currency', defaultCurrency);
    writer.writeStringValue('id', id);
    writer.writeEnumValue<CountrySpecObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<CountrySpecSupportedBankAccountCurrencies>(
        'supported_bank_account_currencies', supportedBankAccountCurrencies);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'supported_payment_currencies', supportedPaymentCurrencies);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'supported_payment_methods', supportedPaymentMethods);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'supported_transfer_countries', supportedTransferCountries);
    writer.writeObjectValue<CountrySpecVerificationFields>(
        'verification_fields', verificationFields);
    writer.writeAdditionalData(additionalData);
  }
}
