// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_shipping_rate_token_post_request_body_fixed_amount_currency_options.dart';

/// auto generated
/// Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
class WithShippingRateTokenPostRequestBodyFixedAmount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency_options property
  WithShippingRateTokenPostRequestBodyFixedAmountCurrencyOptions?
      currencyOptions;

  /// Instantiates a new [WithShippingRateTokenPostRequestBodyFixedAmount] and sets the default values.
  WithShippingRateTokenPostRequestBodyFixedAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithShippingRateTokenPostRequestBodyFixedAmount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithShippingRateTokenPostRequestBodyFixedAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency_options'] = (node) => currencyOptions =
        node.getObjectValue<
                WithShippingRateTokenPostRequestBodyFixedAmountCurrencyOptions>(
            WithShippingRateTokenPostRequestBodyFixedAmountCurrencyOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithShippingRateTokenPostRequestBodyFixedAmountCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeAdditionalData(additionalData);
  }
}
