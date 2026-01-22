// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_authorization_fuel_data_type.dart';
import './issuing_authorization_fuel_data_unit.dart';

/// auto generated
class IssuingAuthorizationFuelData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
  String? industryProductCode;

  ///  The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
  String? quantityDecimal;

  ///  The type of fuel that was purchased.
  IssuingAuthorizationFuelDataType? type_;

  ///  The units for `quantity_decimal`.
  IssuingAuthorizationFuelDataUnit? unit;

  ///  The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
  String? unitCostDecimal;

  /// Instantiates a new [IssuingAuthorizationFuelData] and sets the default values.
  IssuingAuthorizationFuelData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationFuelData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationFuelData();
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
        node.getEnumValue<IssuingAuthorizationFuelDataType>((stringValue) =>
            IssuingAuthorizationFuelDataType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unit'] = (node) => unit =
        node.getEnumValue<IssuingAuthorizationFuelDataUnit>((stringValue) =>
            IssuingAuthorizationFuelDataUnit.values
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
    writer.writeEnumValue<IssuingAuthorizationFuelDataType>(
        'type', type_, (e) => e?.value);
    writer.writeEnumValue<IssuingAuthorizationFuelDataUnit>(
        'unit', unit, (e) => e?.value);
    writer.writeStringValue('unit_cost_decimal', unitCostDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
