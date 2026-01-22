// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './promotion_codes_post_request_body_promotion_type.dart';

/// auto generated
/// The promotion referenced by this promotion code.
class PromotionCodesPostRequestBodyPromotion
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The coupon property
  String? coupon;

  ///  The type property
  PromotionCodesPostRequestBodyPromotionType? type_;

  /// Instantiates a new [PromotionCodesPostRequestBodyPromotion] and sets the default values.
  PromotionCodesPostRequestBodyPromotion() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PromotionCodesPostRequestBodyPromotion createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PromotionCodesPostRequestBodyPromotion();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['coupon'] = (node) => coupon = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PromotionCodesPostRequestBodyPromotionType>(
            (stringValue) => PromotionCodesPostRequestBodyPromotionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('coupon', coupon);
    writer.writeEnumValue<PromotionCodesPostRequestBodyPromotionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
