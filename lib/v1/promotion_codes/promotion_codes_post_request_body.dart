// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './promotion_codes_post_request_body_metadata.dart';
import './promotion_codes_post_request_body_promotion.dart';
import './promotion_codes_post_request_body_restrictions.dart';

/// auto generated
class PromotionCodesPostRequestBody implements Parsable {
  ///  Whether the promotion code is currently active.
  bool? active;

  ///  The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for a specific customer. Valid characters are lower case letters (a-z), upper case letters (A-Z), and digits (0-9).If left blank, we will generate one automatically.
  String? code;

  ///  The customer who can use this promotion code. If not set, all customers can use the promotion code.
  String? customer;

  ///  The account representing the customer who can use this promotion code. If not set, all customers can use the promotion code.
  String? customerAccount;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The timestamp at which this promotion code will expire. If the coupon has specified a `redeems_by`, then this value cannot be after the coupon's `redeems_by`.
  int? expiresAt;

  ///  A positive integer specifying the number of times the promotion code can be redeemed. If the coupon has specified a `max_redemptions`, then this value cannot be greater than the coupon's `max_redemptions`.
  int? maxRedemptions;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  PromotionCodesPostRequestBodyMetadata? metadata;

  ///  The promotion referenced by this promotion code.
  PromotionCodesPostRequestBodyPromotion? promotion;

  ///  Settings that restrict the redemption of the promotion code.
  PromotionCodesPostRequestBodyRestrictions? restrictions;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PromotionCodesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PromotionCodesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['code'] = (node) => code = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['max_redemptions'] =
        (node) => maxRedemptions = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PromotionCodesPostRequestBodyMetadata>(
            PromotionCodesPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['promotion'] = (node) => promotion = node.getObjectValue<
            PromotionCodesPostRequestBodyPromotion>(
        PromotionCodesPostRequestBodyPromotion.createFromDiscriminatorValue);
    deserializerMap['restrictions'] = (node) => restrictions =
        node.getObjectValue<PromotionCodesPostRequestBodyRestrictions>(
            PromotionCodesPostRequestBodyRestrictions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeStringValue('code', code);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeIntValue('max_redemptions', maxRedemptions);
    writer.writeObjectValue<PromotionCodesPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<PromotionCodesPostRequestBodyPromotion>(
        'promotion', promotion);
    writer.writeObjectValue<PromotionCodesPostRequestBodyRestrictions>(
        'restrictions', restrictions);
  }
}
