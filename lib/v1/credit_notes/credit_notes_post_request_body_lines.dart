// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_notes_post_request_body_lines_tax_amounts.dart';
import './credit_notes_post_request_body_lines_tax_rates.dart';
import './credit_notes_post_request_body_lines_type.dart';

/// auto generated
class CreditNotesPostRequestBodyLines
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The description property
  String? description;

  ///  The invoice_line_item property
  String? invoiceLineItem;

  ///  The quantity property
  int? quantity;

  ///  The tax_amounts property
  CreditNotesPostRequestBodyLinesTaxAmounts? taxAmounts;

  ///  The tax_rates property
  CreditNotesPostRequestBodyLinesTaxRates? taxRates;

  ///  The type property
  CreditNotesPostRequestBodyLinesType? type_;

  ///  The unit_amount property
  int? unitAmount;

  ///  The unit_amount_decimal property
  String? unitAmountDecimal;

  /// Instantiates a new [CreditNotesPostRequestBodyLines] and sets the default values.
  CreditNotesPostRequestBodyLines() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditNotesPostRequestBodyLines createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreditNotesPostRequestBodyLines();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['invoice_line_item'] =
        (node) => invoiceLineItem = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_amounts'] = (node) => taxAmounts = node.getObjectValue<
            CreditNotesPostRequestBodyLinesTaxAmounts>(
        CreditNotesPostRequestBodyLinesTaxAmounts.createFromDiscriminatorValue);
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            CreditNotesPostRequestBodyLinesTaxRates>(
        CreditNotesPostRequestBodyLinesTaxRates.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CreditNotesPostRequestBodyLinesType>((stringValue) =>
            CreditNotesPostRequestBodyLinesType.values
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
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('description', description);
    writer.writeStringValue('invoice_line_item', invoiceLineItem);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<CreditNotesPostRequestBodyLinesTaxAmounts>(
        'tax_amounts', taxAmounts);
    writer.writeObjectValue<CreditNotesPostRequestBodyLinesTaxRates>(
        'tax_rates', taxRates);
    writer.writeEnumValue<CreditNotesPostRequestBodyLinesType>(
        'type', type_, (e) => e?.value);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
