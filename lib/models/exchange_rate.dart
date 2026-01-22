// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './exchange_rate_object.dart';
import './exchange_rate_rates.dart';

/// auto generated
/// [Deprecated] The `ExchangeRate` APIs are deprecated. Please use the [FX Quotes API](https://docs.stripe.com/payments/currencies/localize-prices/fx-quotes-api) instead.`ExchangeRate` objects allow you to determine the rates that Stripe is currentlyusing to convert from one currency to another. Since this number is variablethroughout the day, there are various reasons why you might want to know the currentrate (for example, to dynamically price an item for a user with a defaultpayment in a foreign currency).Please refer to our [Exchange Rates API](https://docs.stripe.com/fx-rates) guide for more details.*[Note: this integration path is supported but no longer recommended]* Additionally,you can guarantee that a charge is made with an exchange rate that you expect iscurrent. To do so, you must pass in the exchange_rate to charges endpoints. If thevalue is no longer up to date, the charge won't go through. Please refer to our[Using with charges](https://docs.stripe.com/exchange-rates) guide for more details.-----&nbsp;*This Exchange Rates API is a Beta Service and is subject to Stripe's terms of service. You may use the API solely for the purpose of transacting on Stripe. For example, the API may be queried in order to:*- *localize prices for processing payments on Stripe*- *reconcile Stripe transactions*- *determine how much money to send to a connected account*- *determine app fees to charge a connected account**Using this Exchange Rates API beta for any purpose other than to transact on Stripe is strictly prohibited and constitutes a violation of Stripe's terms of service.*
class ExchangeRate implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Unique identifier for the object. Represented as the three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) in lowercase.
  String? id;

  ///  String representing the object's type. Objects of the same type share the same value.
  ExchangeRateObject? object;

  ///  Hash where the keys are supported currencies and the values are the exchange rate at which the base id currency converts to the key currency.
  ExchangeRateRates? rates;

  /// Instantiates a new [ExchangeRate] and sets the default values.
  ExchangeRate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ExchangeRate createFromDiscriminatorValue(ParseNode parseNode) {
    return ExchangeRate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ExchangeRateObject>((stringValue) =>
            ExchangeRateObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['rates'] = (node) => rates =
        node.getObjectValue<ExchangeRateRates>(
            ExchangeRateRates.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeEnumValue<ExchangeRateObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<ExchangeRateRates>('rates', rates);
    writer.writeAdditionalData(additionalData);
  }
}
