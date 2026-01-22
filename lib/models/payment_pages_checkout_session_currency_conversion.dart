// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentPagesCheckoutSessionCurrencyConversion
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Total of all items in source currency before discounts or taxes are applied.
  int? amountSubtotal;

  ///  Total of all items in source currency after discounts and taxes are applied.
  int? amountTotal;

  ///  Exchange rate used to convert source currency amounts to customer currency amounts
  String? fxRate;

  ///  Creation currency of the CheckoutSession before localization
  String? sourceCurrency;

  /// Instantiates a new [PaymentPagesCheckoutSessionCurrencyConversion] and sets the default values.
  PaymentPagesCheckoutSessionCurrencyConversion() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionCurrencyConversion
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionCurrencyConversion();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_subtotal'] =
        (node) => amountSubtotal = node.getIntValue();
    deserializerMap['amount_total'] =
        (node) => amountTotal = node.getIntValue();
    deserializerMap['fx_rate'] = (node) => fxRate = node.getStringValue();
    deserializerMap['source_currency'] =
        (node) => sourceCurrency = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_subtotal', amountSubtotal);
    writer.writeIntValue('amount_total', amountTotal);
    writer.writeStringValue('fx_rate', fxRate);
    writer.writeStringValue('source_currency', sourceCurrency);
    writer.writeAdditionalData(additionalData);
  }
}
