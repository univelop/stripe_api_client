// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_line_items_price_data_product_data.dart';
import './sessions_post_request_body_line_items_price_data_recurring.dart';
import './sessions_post_request_body_line_items_price_data_tax_behavior.dart';

/// auto generated
class SessionsPostRequestBodyLineItemsPriceData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  String? currency;

  ///  The product property
  String? product;

  ///  The product_data property
  SessionsPostRequestBodyLineItemsPriceDataProductData? productData;

  ///  The recurring property
  SessionsPostRequestBodyLineItemsPriceDataRecurring? recurring;

  ///  The tax_behavior property
  SessionsPostRequestBodyLineItemsPriceDataTaxBehavior? taxBehavior;

  ///  The unit_amount property
  int? unitAmount;

  ///  The unit_amount_decimal property
  String? unitAmountDecimal;

  /// Instantiates a new [SessionsPostRequestBodyLineItemsPriceData] and sets the default values.
  SessionsPostRequestBodyLineItemsPriceData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyLineItemsPriceData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyLineItemsPriceData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['product'] = (node) => product = node.getStringValue();
    deserializerMap['product_data'] = (node) => productData = node
        .getObjectValue<SessionsPostRequestBodyLineItemsPriceDataProductData>(
            SessionsPostRequestBodyLineItemsPriceDataProductData
                .createFromDiscriminatorValue);
    deserializerMap['recurring'] = (node) => recurring =
        node.getObjectValue<SessionsPostRequestBodyLineItemsPriceDataRecurring>(
            SessionsPostRequestBodyLineItemsPriceDataRecurring
                .createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<SessionsPostRequestBodyLineItemsPriceDataTaxBehavior>(
            (stringValue) =>
                SessionsPostRequestBodyLineItemsPriceDataTaxBehavior.values
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
    writer
        .writeObjectValue<SessionsPostRequestBodyLineItemsPriceDataProductData>(
            'product_data', productData);
    writer.writeObjectValue<SessionsPostRequestBodyLineItemsPriceDataRecurring>(
        'recurring', recurring);
    writer.writeEnumValue<SessionsPostRequestBodyLineItemsPriceDataTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
