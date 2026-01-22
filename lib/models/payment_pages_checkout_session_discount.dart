// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_discount_coupon.dart';
import './payment_pages_checkout_session_discount_promotion_code.dart';

/// auto generated
class PaymentPagesCheckoutSessionDiscount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Coupon attached to the Checkout Session.
  PaymentPagesCheckoutSessionDiscountCoupon? coupon;

  ///  Promotion code attached to the Checkout Session.
  PaymentPagesCheckoutSessionDiscountPromotionCode? promotionCode;

  /// Instantiates a new [PaymentPagesCheckoutSessionDiscount] and sets the default values.
  PaymentPagesCheckoutSessionDiscount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionDiscount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentPagesCheckoutSessionDiscount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['coupon'] = (node) => coupon = node.getObjectValue<
            PaymentPagesCheckoutSessionDiscountCoupon>(
        PaymentPagesCheckoutSessionDiscountCoupon.createFromDiscriminatorValue);
    deserializerMap['promotion_code'] = (node) => promotionCode =
        node.getObjectValue<PaymentPagesCheckoutSessionDiscountPromotionCode>(
            PaymentPagesCheckoutSessionDiscountPromotionCode
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentPagesCheckoutSessionDiscountCoupon>(
        'coupon', coupon);
    writer.writeObjectValue<PaymentPagesCheckoutSessionDiscountPromotionCode>(
        'promotion_code', promotionCode);
    writer.writeAdditionalData(additionalData);
  }
}
