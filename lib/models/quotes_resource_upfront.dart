// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_resource_total_details.dart';
import './quotes_resource_upfront_line_items.dart';

/// auto generated
class QuotesResourceUpfront implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Total before any discounts or taxes are applied.
  int? amountSubtotal;

  ///  Total after discounts and taxes are applied.
  int? amountTotal;

  ///  The line items that will appear on the next invoice after this quote is accepted. This does not include pending invoice items that exist on the customer but may still be included in the next invoice.
  QuotesResourceUpfrontLineItems? lineItems;

  ///  The total_details property
  QuotesResourceTotalDetails? totalDetails;

  /// Instantiates a new [QuotesResourceUpfront] and sets the default values.
  QuotesResourceUpfront() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesResourceUpfront createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesResourceUpfront();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_subtotal'] =
        (node) => amountSubtotal = node.getIntValue();
    deserializerMap['amount_total'] =
        (node) => amountTotal = node.getIntValue();
    deserializerMap['line_items'] = (node) => lineItems =
        node.getObjectValue<QuotesResourceUpfrontLineItems>(
            QuotesResourceUpfrontLineItems.createFromDiscriminatorValue);
    deserializerMap['total_details'] = (node) => totalDetails =
        node.getObjectValue<QuotesResourceTotalDetails>(
            QuotesResourceTotalDetails.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_subtotal', amountSubtotal);
    writer.writeIntValue('amount_total', amountTotal);
    writer.writeObjectValue<QuotesResourceUpfrontLineItems>(
        'line_items', lineItems);
    writer.writeObjectValue<QuotesResourceTotalDetails>(
        'total_details', totalDetails);
    writer.writeAdditionalData(additionalData);
  }
}
