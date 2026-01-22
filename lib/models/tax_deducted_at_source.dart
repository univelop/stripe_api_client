// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_deducted_at_source_object.dart';

/// auto generated
class TaxDeductedAtSource implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Unique identifier for the object.
  String? id;

  ///  String representing the object's type. Objects of the same type share the same value.
  TaxDeductedAtSourceObject? object;

  ///  The end of the invoicing period. This TDS applies to Stripe fees collected during this invoicing period.
  int? periodEnd;

  ///  The start of the invoicing period. This TDS applies to Stripe fees collected during this invoicing period.
  int? periodStart;

  ///  The TAN that was supplied to Stripe when TDS was assessed
  String? taxDeductionAccountNumber;

  /// Instantiates a new [TaxDeductedAtSource] and sets the default values.
  TaxDeductedAtSource() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxDeductedAtSource createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxDeductedAtSource();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TaxDeductedAtSourceObject>((stringValue) =>
            TaxDeductedAtSourceObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['period_end'] = (node) => periodEnd = node.getIntValue();
    deserializerMap['period_start'] =
        (node) => periodStart = node.getIntValue();
    deserializerMap['tax_deduction_account_number'] =
        (node) => taxDeductionAccountNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeEnumValue<TaxDeductedAtSourceObject>(
        'object', object, (e) => e?.value);
    writer.writeIntValue('period_end', periodEnd);
    writer.writeIntValue('period_start', periodStart);
    writer.writeStringValue(
        'tax_deduction_account_number', taxDeductionAccountNumber);
    writer.writeAdditionalData(additionalData);
  }
}
