// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './discounts_resource_stackable_discount_coupon.dart';
import './discounts_resource_stackable_discount_discount.dart';
import './discounts_resource_stackable_discount_promotion_code.dart';

/// auto generated
class DiscountsResourceStackableDiscount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the coupon to create a new discount for.
  DiscountsResourceStackableDiscountCoupon? coupon;

  ///  ID of an existing discount on the object (or one of its ancestors) to reuse.
  DiscountsResourceStackableDiscountDiscount? discount;

  ///  ID of the promotion code to create a new discount for.
  DiscountsResourceStackableDiscountPromotionCode? promotionCode;

  /// Instantiates a new [DiscountsResourceStackableDiscount] and sets the default values.
  DiscountsResourceStackableDiscount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DiscountsResourceStackableDiscount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DiscountsResourceStackableDiscount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['coupon'] = (node) => coupon = node.getObjectValue<
            DiscountsResourceStackableDiscountCoupon>(
        DiscountsResourceStackableDiscountCoupon.createFromDiscriminatorValue);
    deserializerMap['discount'] = (node) => discount =
        node.getObjectValue<DiscountsResourceStackableDiscountDiscount>(
            DiscountsResourceStackableDiscountDiscount
                .createFromDiscriminatorValue);
    deserializerMap['promotion_code'] = (node) => promotionCode =
        node.getObjectValue<DiscountsResourceStackableDiscountPromotionCode>(
            DiscountsResourceStackableDiscountPromotionCode
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<DiscountsResourceStackableDiscountCoupon>(
        'coupon', coupon);
    writer.writeObjectValue<DiscountsResourceStackableDiscountDiscount>(
        'discount', discount);
    writer.writeObjectValue<DiscountsResourceStackableDiscountPromotionCode>(
        'promotion_code', promotionCode);
    writer.writeAdditionalData(additionalData);
  }
}
