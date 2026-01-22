// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_items_price_data_recurring.dart';
import './create_preview_post_request_body_schedule_details_phases_items_price_data_tax_behavior.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  String? currency;

  ///  The product property
  String? product;

  ///  The recurring property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurring?
      recurring;

  ///  The tax_behavior property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataTaxBehavior?
      taxBehavior;

  ///  The unit_amount property
  int? unitAmount;

  ///  The unit_amount_decimal property
  String? unitAmountDecimal;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceData] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceData()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['product'] = (node) => product = node.getStringValue();
    deserializerMap['recurring'] = (node) => recurring = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurring>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurring
            .createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior = node.getEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataTaxBehavior>(
        (stringValue) =>
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataTaxBehavior
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
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataRecurring>(
        'recurring', recurring);
    writer.writeEnumValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceDataTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
