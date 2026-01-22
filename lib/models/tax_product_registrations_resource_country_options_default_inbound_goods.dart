// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_registrations_resource_country_options_default_inbound_goods_type.dart';
import './tax_product_registrations_resource_country_options_default_standard.dart';

/// auto generated
class TaxProductRegistrationsResourceCountryOptionsDefaultInboundGoods
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The standard property
  TaxProductRegistrationsResourceCountryOptionsDefaultStandard? standard;

  ///  Type of registration in `country`.
  TaxProductRegistrationsResourceCountryOptionsDefaultInboundGoodsType? type_;

  /// Instantiates a new [TaxProductRegistrationsResourceCountryOptionsDefaultInboundGoods] and sets the default values.
  TaxProductRegistrationsResourceCountryOptionsDefaultInboundGoods()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductRegistrationsResourceCountryOptionsDefaultInboundGoods
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxProductRegistrationsResourceCountryOptionsDefaultInboundGoods();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['standard'] = (node) => standard = node.getObjectValue<
            TaxProductRegistrationsResourceCountryOptionsDefaultStandard>(
        TaxProductRegistrationsResourceCountryOptionsDefaultStandard
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            TaxProductRegistrationsResourceCountryOptionsDefaultInboundGoodsType>(
        (stringValue) =>
            TaxProductRegistrationsResourceCountryOptionsDefaultInboundGoodsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TaxProductRegistrationsResourceCountryOptionsDefaultStandard>(
        'standard', standard);
    writer.writeEnumValue<
            TaxProductRegistrationsResourceCountryOptionsDefaultInboundGoodsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
