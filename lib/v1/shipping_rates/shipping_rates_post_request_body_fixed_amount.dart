// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './shipping_rates_post_request_body_fixed_amount_currency_options.dart';

/// auto generated
/// Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
class ShippingRatesPostRequestBodyFixedAmount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The currency property
  String? currency;

  ///  The currency_options property
  ShippingRatesPostRequestBodyFixedAmountCurrencyOptions? currencyOptions;

  /// Instantiates a new [ShippingRatesPostRequestBodyFixedAmount] and sets the default values.
  ShippingRatesPostRequestBodyFixedAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ShippingRatesPostRequestBodyFixedAmount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ShippingRatesPostRequestBodyFixedAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['currency_options'] = (node) => currencyOptions = node
        .getObjectValue<ShippingRatesPostRequestBodyFixedAmountCurrencyOptions>(
            ShippingRatesPostRequestBodyFixedAmountCurrencyOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<
            ShippingRatesPostRequestBodyFixedAmountCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeAdditionalData(additionalData);
  }
}
