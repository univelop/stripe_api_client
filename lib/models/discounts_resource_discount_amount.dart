// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './discounts_resource_discount_amount_discount.dart';

/// auto generated
class DiscountsResourceDiscountAmount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount, in cents (or local equivalent), of the discount.
  int? amount;

  ///  The discount that was applied to get this discount amount.
  DiscountsResourceDiscountAmountDiscount? discount;

  /// Instantiates a new [DiscountsResourceDiscountAmount] and sets the default values.
  DiscountsResourceDiscountAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DiscountsResourceDiscountAmount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DiscountsResourceDiscountAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['discount'] = (node) => discount = node.getObjectValue<
            DiscountsResourceDiscountAmountDiscount>(
        DiscountsResourceDiscountAmountDiscount.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<DiscountsResourceDiscountAmountDiscount>(
        'discount', discount);
    writer.writeAdditionalData(additionalData);
  }
}
