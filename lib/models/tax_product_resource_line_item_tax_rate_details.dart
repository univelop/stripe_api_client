// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_line_item_tax_rate_details_tax_type.dart';

/// auto generated
class TaxProductResourceLineItemTaxRateDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A localized display name for tax type, intended to be human-readable. For example, "Local Sales and Use Tax", "Value-added tax (VAT)", or "Umsatzsteuer (USt.)".
  String? displayName;

  ///  The tax rate percentage as a string. For example, 8.5% is represented as "8.5".
  String? percentageDecimal;

  ///  The tax type, such as `vat` or `sales_tax`.
  TaxProductResourceLineItemTaxRateDetailsTaxType? taxType;

  /// Instantiates a new [TaxProductResourceLineItemTaxRateDetails] and sets the default values.
  TaxProductResourceLineItemTaxRateDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceLineItemTaxRateDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TaxProductResourceLineItemTaxRateDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['percentage_decimal'] =
        (node) => percentageDecimal = node.getStringValue();
    deserializerMap['tax_type'] = (node) => taxType =
        node.getEnumValue<TaxProductResourceLineItemTaxRateDetailsTaxType>(
            (stringValue) => TaxProductResourceLineItemTaxRateDetailsTaxType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('display_name', displayName);
    writer.writeStringValue('percentage_decimal', percentageDecimal);
    writer.writeEnumValue<TaxProductResourceLineItemTaxRateDetailsTaxType>(
        'tax_type', taxType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
