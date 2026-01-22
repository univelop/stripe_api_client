// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_lines_post_request_body_lines_price_data_product_data.dart';
import './update_lines_post_request_body_lines_price_data_tax_behavior.dart';

/// auto generated
class UpdateLinesPostRequestBodyLinesPriceData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  String? currency;

  ///  The product property
  String? product;

  ///  The product_data property
  UpdateLinesPostRequestBodyLinesPriceDataProductData? productData;

  ///  The tax_behavior property
  UpdateLinesPostRequestBodyLinesPriceDataTaxBehavior? taxBehavior;

  ///  The unit_amount property
  int? unitAmount;

  ///  The unit_amount_decimal property
  String? unitAmountDecimal;

  /// Instantiates a new [UpdateLinesPostRequestBodyLinesPriceData] and sets the default values.
  UpdateLinesPostRequestBodyLinesPriceData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static UpdateLinesPostRequestBodyLinesPriceData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return UpdateLinesPostRequestBodyLinesPriceData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['product'] = (node) => product = node.getStringValue();
    deserializerMap['product_data'] = (node) => productData = node
        .getObjectValue<UpdateLinesPostRequestBodyLinesPriceDataProductData>(
            UpdateLinesPostRequestBodyLinesPriceDataProductData
                .createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<UpdateLinesPostRequestBodyLinesPriceDataTaxBehavior>(
            (stringValue) => UpdateLinesPostRequestBodyLinesPriceDataTaxBehavior
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
    writer
        .writeObjectValue<UpdateLinesPostRequestBodyLinesPriceDataProductData>(
            'product_data', productData);
    writer.writeEnumValue<UpdateLinesPostRequestBodyLinesPriceDataTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
