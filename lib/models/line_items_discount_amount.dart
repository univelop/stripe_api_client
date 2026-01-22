// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './discount.dart';

/// auto generated
class LineItemsDiscountAmount implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount discounted.
  int? amount;

  ///  A discount represents the actual application of a [coupon](https://api.stripe.com#coupons) or [promotion code](https://api.stripe.com#promotion_codes).It contains information about when the discount began, when it will end, and what it is applied to.Related guide: [Applying discounts to subscriptions](https://docs.stripe.com/billing/subscriptions/discounts)
  Discount? discount;

  /// Instantiates a new [LineItemsDiscountAmount] and sets the default values.
  LineItemsDiscountAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LineItemsDiscountAmount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return LineItemsDiscountAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['discount'] = (node) => discount =
        node.getObjectValue<Discount>(Discount.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<Discount>('discount', discount);
    writer.writeAdditionalData(additionalData);
  }
}
