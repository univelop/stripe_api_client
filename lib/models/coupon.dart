// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './coupon_applies_to.dart';
import './coupon_currency_options.dart';
import './coupon_duration.dart';
import './coupon_metadata.dart';
import './coupon_object.dart';

/// auto generated
/// A coupon contains information about a percent-off or amount-off discount youmight want to apply to a customer. Coupons may be applied to [subscriptions](https://api.stripe.com#subscriptions), [invoices](https://api.stripe.com#invoices),[checkout sessions](https://docs.stripe.com/api/checkout/sessions), [quotes](https://api.stripe.com#quotes), and more. Coupons do not work with conventional one-off [charges](https://api.stripe.com#create_charge) or [payment intents](https://docs.stripe.com/api/payment_intents).
class Coupon implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
  int? amountOff;

  ///  The applies_to property
  CouponAppliesTo? appliesTo;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  If `amount_off` has been set, the three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the amount to take off.
  String? currency;

  ///  Coupons defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
  CouponCurrencyOptions? currencyOptions;

  ///  One of `forever`, `once`, or `repeating`. Describes how long a customer who applies this coupon will get the discount.
  CouponDuration? duration;

  ///  If `duration` is `repeating`, the number of months the coupon applies. Null if coupon `duration` is `forever` or `once`.
  int? durationInMonths;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Maximum number of times this coupon can be redeemed, in total, across all customers, before it is no longer valid.
  int? maxRedemptions;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  CouponMetadata? metadata;

  ///  Name of the coupon displayed to customers on for instance invoices or receipts.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  CouponObject? object;

  ///  Percent that will be taken off the subtotal of any invoices for this customer for the duration of the coupon. For example, a coupon with percent_off of 50 will make a $ (or local equivalent)100 invoice $ (or local equivalent)50 instead.
  double? percentOff;

  ///  Date after which the coupon can no longer be redeemed.
  int? redeemBy;

  ///  Number of times this coupon has been applied to a customer.
  int? timesRedeemed;

  ///  Taking account of the above properties, whether this coupon can still be applied to a customer.
  bool? valid;

  /// Instantiates a new [Coupon] and sets the default values.
  Coupon() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Coupon createFromDiscriminatorValue(ParseNode parseNode) {
    return Coupon();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_off'] = (node) => amountOff = node.getIntValue();
    deserializerMap['applies_to'] = (node) => appliesTo =
        node.getObjectValue<CouponAppliesTo>(
            CouponAppliesTo.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['currency_options'] = (node) => currencyOptions =
        node.getObjectValue<CouponCurrencyOptions>(
            CouponCurrencyOptions.createFromDiscriminatorValue);
    deserializerMap['duration'] = (node) => duration =
        node.getEnumValue<CouponDuration>((stringValue) => CouponDuration.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['duration_in_months'] =
        (node) => durationInMonths = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['max_redemptions'] =
        (node) => maxRedemptions = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CouponMetadata>(
            CouponMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CouponObject>((stringValue) => CouponObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['percent_off'] =
        (node) => percentOff = node.getDoubleValue();
    deserializerMap['redeem_by'] = (node) => redeemBy = node.getIntValue();
    deserializerMap['times_redeemed'] =
        (node) => timesRedeemed = node.getIntValue();
    deserializerMap['valid'] = (node) => valid = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_off', amountOff);
    writer.writeObjectValue<CouponAppliesTo>('applies_to', appliesTo);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<CouponCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeEnumValue<CouponDuration>(
        'duration', duration, (e) => e?.value);
    writer.writeIntValue('duration_in_months', durationInMonths);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeIntValue('max_redemptions', maxRedemptions);
    writer.writeObjectValue<CouponMetadata>('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<CouponObject>('object', object, (e) => e?.value);
    writer.writeDoubleValue('percent_off', percentOff);
    writer.writeIntValue('redeem_by', redeemBy);
    writer.writeIntValue('times_redeemed', timesRedeemed);
    writer.writeBoolValue('valid', value: valid);
    writer.writeAdditionalData(additionalData);
  }
}
