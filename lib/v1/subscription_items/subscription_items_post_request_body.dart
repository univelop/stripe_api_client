// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_items_post_request_body_billing_thresholds.dart';
import './subscription_items_post_request_body_discounts.dart';
import './subscription_items_post_request_body_metadata.dart';
import './subscription_items_post_request_body_payment_behavior.dart';
import './subscription_items_post_request_body_price_data.dart';
import './subscription_items_post_request_body_proration_behavior.dart';
import './subscription_items_post_request_body_tax_rates.dart';

/// auto generated
class SubscriptionItemsPostRequestBody implements Parsable {
  ///  Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
  SubscriptionItemsPostRequestBodyBillingThresholds? billingThresholds;

  ///  The coupons to redeem into discounts for the subscription item.
  SubscriptionItemsPostRequestBodyDiscounts? discounts;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  SubscriptionItemsPostRequestBodyMetadata? metadata;

  ///  Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://docs.stripe.com/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://docs.stripe.com/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.Use `pending_if_incomplete` to update the subscription using [pending updates](https://docs.stripe.com/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://docs.stripe.com/billing/pending-updates-reference#supported-attributes).Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://docs.stripe.com/changelog/2019-03-14) to learn more.
  SubscriptionItemsPostRequestBodyPaymentBehavior? paymentBehavior;

  ///  The ID of the price object.
  String? price;

  ///  Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline.
  SubscriptionItemsPostRequestBodyPriceData? priceData;

  ///  Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
  SubscriptionItemsPostRequestBodyProrationBehavior? prorationBehavior;

  ///  If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://api.stripe.com#retrieve_customer_invoice) endpoint.
  int? prorationDate;

  ///  The quantity you'd like to apply to the subscription item you're creating.
  int? quantity;

  ///  The identifier of the subscription to modify.
  String? subscription;

  ///  A list of [Tax Rate](https://docs.stripe.com/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://docs.stripe.com/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
  SubscriptionItemsPostRequestBodyTaxRates? taxRates;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionItemsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionItemsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<SubscriptionItemsPostRequestBodyBillingThresholds>(
            SubscriptionItemsPostRequestBodyBillingThresholds
                .createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts = node.getObjectValue<
            SubscriptionItemsPostRequestBodyDiscounts>(
        SubscriptionItemsPostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            SubscriptionItemsPostRequestBodyMetadata>(
        SubscriptionItemsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['payment_behavior'] = (node) => paymentBehavior =
        node.getEnumValue<SubscriptionItemsPostRequestBodyPaymentBehavior>(
            (stringValue) => SubscriptionItemsPostRequestBodyPaymentBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            SubscriptionItemsPostRequestBodyPriceData>(
        SubscriptionItemsPostRequestBodyPriceData.createFromDiscriminatorValue);
    deserializerMap['proration_behavior'] = (node) => prorationBehavior =
        node.getEnumValue<SubscriptionItemsPostRequestBodyProrationBehavior>(
            (stringValue) => SubscriptionItemsPostRequestBodyProrationBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['proration_date'] =
        (node) => prorationDate = node.getIntValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            SubscriptionItemsPostRequestBodyTaxRates>(
        SubscriptionItemsPostRequestBodyTaxRates.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SubscriptionItemsPostRequestBodyBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeObjectValue<SubscriptionItemsPostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<SubscriptionItemsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeEnumValue<SubscriptionItemsPostRequestBodyPaymentBehavior>(
        'payment_behavior', paymentBehavior, (e) => e?.value);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<SubscriptionItemsPostRequestBodyPriceData>(
        'price_data', priceData);
    writer.writeEnumValue<SubscriptionItemsPostRequestBodyProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeIntValue('proration_date', prorationDate);
    writer.writeIntValue('quantity', quantity);
    writer.writeStringValue('subscription', subscription);
    writer.writeObjectValue<SubscriptionItemsPostRequestBodyTaxRates>(
        'tax_rates', taxRates);
  }
}
