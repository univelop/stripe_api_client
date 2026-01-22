// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './promotion_code_customer.dart';
import './promotion_code_metadata.dart';
import './promotion_code_object.dart';
import './promotion_codes_resource_promotion.dart';
import './promotion_codes_resource_restrictions.dart';

/// auto generated
/// A Promotion Code represents a customer-redeemable code for an underlying promotion.You can create multiple codes for a single promotion.If you enable promotion codes in your [customer portal configuration](https://docs.stripe.com/customer-management/configure-portal), then customers can redeem a code themselves when updating a subscription in the portal.Customers can also view the currently active promotion codes and coupons on each of their subscriptions in the portal.
class PromotionCode implements AdditionalDataHolder, Parsable {
  ///  Whether the promotion code is currently active. A promotion code is only active if the coupon is also valid.
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for each customer. Valid characters are lower case letters (a-z), upper case letters (A-Z), and digits (0-9).
  String? code;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The customer who can use this promotion code.
  PromotionCodeCustomer? customer;

  ///  The account representing the customer who can use this promotion code.
  String? customerAccount;

  ///  Date at which the promotion code can no longer be redeemed.
  int? expiresAt;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Maximum number of times this promotion code can be redeemed.
  int? maxRedemptions;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PromotionCodeMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  PromotionCodeObject? object;

  ///  The promotion property
  PromotionCodesResourcePromotion? promotion;

  ///  The restrictions property
  PromotionCodesResourceRestrictions? restrictions;

  ///  Number of times this promotion code has been used.
  int? timesRedeemed;

  /// Instantiates a new [PromotionCode] and sets the default values.
  PromotionCode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PromotionCode createFromDiscriminatorValue(ParseNode parseNode) {
    return PromotionCode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['code'] = (node) => code = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<PromotionCodeCustomer>(
            PromotionCodeCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['max_redemptions'] =
        (node) => maxRedemptions = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PromotionCodeMetadata>(
            PromotionCodeMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PromotionCodeObject>((stringValue) =>
            PromotionCodeObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['promotion'] = (node) => promotion =
        node.getObjectValue<PromotionCodesResourcePromotion>(
            PromotionCodesResourcePromotion.createFromDiscriminatorValue);
    deserializerMap['restrictions'] = (node) => restrictions =
        node.getObjectValue<PromotionCodesResourceRestrictions>(
            PromotionCodesResourceRestrictions.createFromDiscriminatorValue);
    deserializerMap['times_redeemed'] =
        (node) => timesRedeemed = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeStringValue('code', code);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<PromotionCodeCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeIntValue('max_redemptions', maxRedemptions);
    writer.writeObjectValue<PromotionCodeMetadata>('metadata', metadata);
    writer.writeEnumValue<PromotionCodeObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<PromotionCodesResourcePromotion>(
        'promotion', promotion);
    writer.writeObjectValue<PromotionCodesResourceRestrictions>(
        'restrictions', restrictions);
    writer.writeIntValue('times_redeemed', timesRedeemed);
    writer.writeAdditionalData(additionalData);
  }
}
