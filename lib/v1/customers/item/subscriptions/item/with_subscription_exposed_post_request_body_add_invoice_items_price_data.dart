// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_add_invoice_items_price_data_tax_behavior.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  String? currency;

  ///  The product property
  String? product;

  ///  The tax_behavior property
  WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceDataTaxBehavior?
      taxBehavior;

  ///  The unit_amount property
  int? unitAmount;

  ///  The unit_amount_decimal property
  String? unitAmountDecimal;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData] and sets the default values.
  WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['product'] = (node) => product = node.getStringValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior = node.getEnumValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceDataTaxBehavior>(
        (stringValue) =>
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceDataTaxBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unit_amount'] = (node) => unitAmount = node.getIntValue();
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('product', product);
    writer.writeEnumValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceDataTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
