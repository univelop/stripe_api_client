// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './discount_customer.dart';
import './discount_object.dart';
import './discount_promotion_code.dart';
import './discount_source.dart';

/// auto generated
/// A discount represents the actual application of a [coupon](https://api.stripe.com#coupons) or [promotion code](https://api.stripe.com#promotion_codes).It contains information about when the discount began, when it will end, and what it is applied to.Related guide: [Applying discounts to subscriptions](https://docs.stripe.com/billing/subscriptions/discounts)
class Discount implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The Checkout session that this coupon is applied to, if it is applied to a particular session in payment mode. Will not be present for subscription mode.
  String? checkoutSession;

  ///  The ID of the customer associated with this discount.
  DiscountCustomer? customer;

  ///  The ID of the account representing the customer associated with this discount.
  String? customerAccount;

  ///  If the coupon has a duration of `repeating`, the date that this discount will end. If the coupon has a duration of `once` or `forever`, this attribute will be null.
  int? end;

  ///  The ID of the discount object. Discounts cannot be fetched by ID. Use `expand[]=discounts` in API calls to expand discount IDs in an array.
  String? id;

  ///  The invoice that the discount's coupon was applied to, if it was applied directly to a particular invoice.
  String? invoice;

  ///  The invoice item `id` (or invoice line item `id` for invoice line items of type='subscription') that the discount's coupon was applied to, if it was applied directly to a particular invoice item or invoice line item.
  String? invoiceItem;

  ///  String representing the object's type. Objects of the same type share the same value.
  DiscountObject? object;

  ///  The promotion code applied to create this discount.
  DiscountPromotionCode? promotionCode;

  ///  The source property
  DiscountSource? source;

  ///  Date that the coupon was applied.
  int? start;

  ///  The subscription that this coupon is applied to, if it is applied to a particular subscription.
  String? subscription;

  ///  The subscription item that this coupon is applied to, if it is applied to a particular subscription item.
  String? subscriptionItem;

  /// Instantiates a new [Discount] and sets the default values.
  Discount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Discount createFromDiscriminatorValue(ParseNode parseNode) {
    return Discount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['checkout_session'] =
        (node) => checkoutSession = node.getStringValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<DiscountCustomer>(
            DiscountCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['end'] = (node) => end = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['invoice'] = (node) => invoice = node.getStringValue();
    deserializerMap['invoice_item'] =
        (node) => invoiceItem = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<DiscountObject>((stringValue) => DiscountObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['promotion_code'] = (node) => promotionCode =
        node.getObjectValue<DiscountPromotionCode>(
            DiscountPromotionCode.createFromDiscriminatorValue);
    deserializerMap['source'] = (node) => source =
        node.getObjectValue<DiscountSource>(
            DiscountSource.createFromDiscriminatorValue);
    deserializerMap['start'] = (node) => start = node.getIntValue();
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
    deserializerMap['subscription_item'] =
        (node) => subscriptionItem = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('checkout_session', checkoutSession);
    writer.writeObjectValue<DiscountCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeIntValue('end', end);
    writer.writeStringValue('id', id);
    writer.writeStringValue('invoice', invoice);
    writer.writeStringValue('invoice_item', invoiceItem);
    writer.writeEnumValue<DiscountObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<DiscountPromotionCode>(
        'promotion_code', promotionCode);
    writer.writeObjectValue<DiscountSource>('source', source);
    writer.writeIntValue('start', start);
    writer.writeStringValue('subscription', subscription);
    writer.writeStringValue('subscription_item', subscriptionItem);
    writer.writeAdditionalData(additionalData);
  }
}
