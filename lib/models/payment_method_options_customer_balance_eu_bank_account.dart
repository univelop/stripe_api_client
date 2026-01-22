// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_options_customer_balance_eu_bank_account_country.dart';

/// auto generated
class PaymentMethodOptionsCustomerBalanceEuBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
  PaymentMethodOptionsCustomerBalanceEuBankAccountCountry? country;

  /// Instantiates a new [PaymentMethodOptionsCustomerBalanceEuBankAccount] and sets the default values.
  PaymentMethodOptionsCustomerBalanceEuBankAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodOptionsCustomerBalanceEuBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodOptionsCustomerBalanceEuBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['country'] = (node) => country = node
        .getEnumValue<PaymentMethodOptionsCustomerBalanceEuBankAccountCountry>(
            (stringValue) =>
                PaymentMethodOptionsCustomerBalanceEuBankAccountCountry.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentMethodOptionsCustomerBalanceEuBankAccountCountry>(
        'country', country, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
