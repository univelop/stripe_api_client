// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_item_post_request_body_billing_thresholds.dart';
import './with_item_post_request_body_discounts.dart';
import './with_item_post_request_body_payment_behavior.dart';
import './with_item_post_request_body_price_data.dart';
import './with_item_post_request_body_proration_behavior.dart';
import './with_item_post_request_body_tax_rates.dart';

/// auto generated
class WithItemPostRequestBody implements Parsable {
  ///  Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
  WithItemPostRequestBodyBillingThresholds? billingThresholds;

  ///  The coupons to redeem into discounts for the subscription item.
  WithItemPostRequestBodyDiscounts? discounts;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to `false` (on-session).
  bool? offSession;

  ///  Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://docs.stripe.com/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://docs.stripe.com/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.Use `pending_if_incomplete` to update the subscription using [pending updates](https://docs.stripe.com/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://docs.stripe.com/billing/pending-updates-reference#supported-attributes).Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://docs.stripe.com/changelog/2019-03-14) to learn more.
  WithItemPostRequestBodyPaymentBehavior? paymentBehavior;

  ///  The ID of the price object. One of `price` or `price_data` is required. When changing a subscription item's price, `quantity` is set to 1 unless a `quantity` parameter is provided.
  String? price;

  ///  Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline. One of `price` or `price_data` is required.
  WithItemPostRequestBodyPriceData? priceData;

  ///  Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
  WithItemPostRequestBodyProrationBehavior? prorationBehavior;

  ///  If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://api.stripe.com#retrieve_customer_invoice) endpoint.
  int? prorationDate;

  ///  The quantity you'd like to apply to the subscription item you're creating.
  int? quantity;

  ///  A list of [Tax Rate](https://docs.stripe.com/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://docs.stripe.com/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
  WithItemPostRequestBodyTaxRates? taxRates;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithItemPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithItemPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<WithItemPostRequestBodyBillingThresholds>(
            WithItemPostRequestBodyBillingThresholds
                .createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<WithItemPostRequestBodyDiscounts>(
            WithItemPostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['off_session'] = (node) => offSession = node.getBoolValue();
    deserializerMap['payment_behavior'] = (node) => paymentBehavior =
        node.getEnumValue<WithItemPostRequestBodyPaymentBehavior>(
            (stringValue) => WithItemPostRequestBodyPaymentBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData =
        node.getObjectValue<WithItemPostRequestBodyPriceData>(
            WithItemPostRequestBodyPriceData.createFromDiscriminatorValue);
    deserializerMap['proration_behavior'] = (node) => prorationBehavior =
        node.getEnumValue<WithItemPostRequestBodyProrationBehavior>(
            (stringValue) => WithItemPostRequestBodyProrationBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['proration_date'] =
        (node) => prorationDate = node.getIntValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getObjectValue<WithItemPostRequestBodyTaxRates>(
            WithItemPostRequestBodyTaxRates.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithItemPostRequestBodyBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeObjectValue<WithItemPostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeBoolValue('off_session', value: offSession);
    writer.writeEnumValue<WithItemPostRequestBodyPaymentBehavior>(
        'payment_behavior', paymentBehavior, (e) => e?.value);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<WithItemPostRequestBodyPriceData>(
        'price_data', priceData);
    writer.writeEnumValue<WithItemPostRequestBodyProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeIntValue('proration_date', prorationDate);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<WithItemPostRequestBodyTaxRates>(
        'tax_rates', taxRates);
  }
}
