// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './promotion_codes_resource_promotion_coupon.dart';
import './promotion_codes_resource_promotion_type.dart';

/// auto generated
class PromotionCodesResourcePromotion
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If promotion `type` is `coupon`, the coupon for this promotion.
  PromotionCodesResourcePromotionCoupon? coupon;

  ///  The type of promotion.
  PromotionCodesResourcePromotionType? type_;

  /// Instantiates a new [PromotionCodesResourcePromotion] and sets the default values.
  PromotionCodesResourcePromotion() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PromotionCodesResourcePromotion createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PromotionCodesResourcePromotion();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['coupon'] = (node) => coupon =
        node.getObjectValue<PromotionCodesResourcePromotionCoupon>(
            PromotionCodesResourcePromotionCoupon.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PromotionCodesResourcePromotionType>((stringValue) =>
            PromotionCodesResourcePromotionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PromotionCodesResourcePromotionCoupon>(
        'coupon', coupon);
    writer.writeEnumValue<PromotionCodesResourcePromotionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
