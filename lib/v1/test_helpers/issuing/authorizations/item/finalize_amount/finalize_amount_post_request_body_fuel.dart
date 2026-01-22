// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './finalize_amount_post_request_body_fuel_type.dart';
import './finalize_amount_post_request_body_fuel_unit.dart';

/// auto generated
/// Information about fuel that was purchased with this transaction.
class FinalizeAmountPostRequestBodyFuel
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The industry_product_code property
  String? industryProductCode;

  ///  The quantity_decimal property
  String? quantityDecimal;

  ///  The type property
  FinalizeAmountPostRequestBodyFuelType? type_;

  ///  The unit property
  FinalizeAmountPostRequestBodyFuelUnit? unit;

  ///  The unit_cost_decimal property
  String? unitCostDecimal;

  /// Instantiates a new [FinalizeAmountPostRequestBodyFuel] and sets the default values.
  FinalizeAmountPostRequestBodyFuel() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinalizeAmountPostRequestBodyFuel createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FinalizeAmountPostRequestBodyFuel();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['industry_product_code'] =
        (node) => industryProductCode = node.getStringValue();
    deserializerMap['quantity_decimal'] =
        (node) => quantityDecimal = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<FinalizeAmountPostRequestBodyFuelType>(
            (stringValue) => FinalizeAmountPostRequestBodyFuelType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unit'] = (node) => unit =
        node.getEnumValue<FinalizeAmountPostRequestBodyFuelUnit>(
            (stringValue) => FinalizeAmountPostRequestBodyFuelUnit.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unit_cost_decimal'] =
        (node) => unitCostDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('industry_product_code', industryProductCode);
    writer.writeStringValue('quantity_decimal', quantityDecimal);
    writer.writeEnumValue<FinalizeAmountPostRequestBodyFuelType>(
        'type', type_, (e) => e?.value);
    writer.writeEnumValue<FinalizeAmountPostRequestBodyFuelUnit>(
        'unit', unit, (e) => e?.value);
    writer.writeStringValue('unit_cost_decimal', unitCostDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
