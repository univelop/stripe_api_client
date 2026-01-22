// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_resource_total_details_resource_breakdown.dart';

/// auto generated
class QuotesResourceTotalDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  This is the sum of all the discounts.
  int? amountDiscount;

  ///  This is the sum of all the shipping amounts.
  int? amountShipping;

  ///  This is the sum of all the tax amounts.
  int? amountTax;

  ///  The breakdown property
  QuotesResourceTotalDetailsResourceBreakdown? breakdown;

  /// Instantiates a new [QuotesResourceTotalDetails] and sets the default values.
  QuotesResourceTotalDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesResourceTotalDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesResourceTotalDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_discount'] =
        (node) => amountDiscount = node.getIntValue();
    deserializerMap['amount_shipping'] =
        (node) => amountShipping = node.getIntValue();
    deserializerMap['amount_tax'] = (node) => amountTax = node.getIntValue();
    deserializerMap['breakdown'] = (node) => breakdown =
        node.getObjectValue<QuotesResourceTotalDetailsResourceBreakdown>(
            QuotesResourceTotalDetailsResourceBreakdown
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_discount', amountDiscount);
    writer.writeIntValue('amount_shipping', amountShipping);
    writer.writeIntValue('amount_tax', amountTax);
    writer.writeObjectValue<QuotesResourceTotalDetailsResourceBreakdown>(
        'breakdown', breakdown);
    writer.writeAdditionalData(additionalData);
  }
}
