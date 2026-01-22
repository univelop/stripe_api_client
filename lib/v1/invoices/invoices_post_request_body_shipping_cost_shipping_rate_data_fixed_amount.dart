// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_shipping_cost_shipping_rate_data_fixed_amount_currency_options.dart';

/// auto generated
class InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The currency property
  String? currency;

  ///  The currency_options property
  InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmountCurrencyOptions?
      currencyOptions;

  /// Instantiates a new [InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmount] and sets the default values.
  InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmount()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap[
        'currency_options'] = (node) => currencyOptions = node.getObjectValue<
            InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmountCurrencyOptions>(
        InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmountCurrencyOptions
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
            InvoicesPostRequestBodyShippingCostShippingRateDataFixedAmountCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeAdditionalData(additionalData);
  }
}
