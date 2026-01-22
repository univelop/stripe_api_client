// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './coupons_post_request_body_applies_to.dart';
import './coupons_post_request_body_currency_options.dart';
import './coupons_post_request_body_duration.dart';

/// auto generated
class CouponsPostRequestBody implements Parsable {
  ///  A positive integer representing the amount to subtract from an invoice total (required if `percent_off` is not passed).
  int? amountOff;

  ///  A hash containing directions for what this Coupon will apply discounts to.
  CouponsPostRequestBodyAppliesTo? appliesTo;

  ///  Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `amount_off` parameter (required if `amount_off` is passed).
  String? currency;

  ///  Coupons defined in each available currency option (only supported if `amount_off` is passed). Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
  CouponsPostRequestBodyCurrencyOptions? currencyOptions;

  ///  Specifies how long the discount will be in effect if used on a subscription. Defaults to `once`.
  CouponsPostRequestBodyDuration? duration;

  ///  Required only if `duration` is `repeating`, in which case it must be a positive integer that specifies the number of months the discount will be in effect.
  int? durationInMonths;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Unique string of your choice that will be used to identify this coupon when applying it to a customer. If you don't want to specify a particular code, you can leave the ID blank and we'll generate a random code for you.
  String? id;

  ///  A positive integer specifying the number of times the coupon can be redeemed before it's no longer valid. For example, you might have a 50% off coupon that the first 20 readers of your blog can use.
  int? maxRedemptions;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
  String? name;

  ///  A positive float larger than 0, and smaller or equal to 100, that represents the discount the coupon will apply (required if `amount_off` is not passed).
  double? percentOff;

  ///  Unix timestamp specifying the last time at which the coupon can be redeemed. After the redeem_by date, the coupon can no longer be applied to new customers.
  int? redeemBy;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CouponsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CouponsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_off'] = (node) => amountOff = node.getIntValue();
    deserializerMap['applies_to'] = (node) => appliesTo =
        node.getObjectValue<CouponsPostRequestBodyAppliesTo>(
            CouponsPostRequestBodyAppliesTo.createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['currency_options'] = (node) => currencyOptions =
        node.getObjectValue<CouponsPostRequestBodyCurrencyOptions>(
            CouponsPostRequestBodyCurrencyOptions.createFromDiscriminatorValue);
    deserializerMap['duration'] = (node) => duration =
        node.getEnumValue<CouponsPostRequestBodyDuration>((stringValue) =>
            CouponsPostRequestBodyDuration.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['duration_in_months'] =
        (node) => durationInMonths = node.getIntValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['max_redemptions'] =
        (node) => maxRedemptions = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['percent_off'] =
        (node) => percentOff = node.getDoubleValue();
    deserializerMap['redeem_by'] = (node) => redeemBy = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_off', amountOff);
    writer.writeObjectValue<CouponsPostRequestBodyAppliesTo>(
        'applies_to', appliesTo);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<CouponsPostRequestBodyCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeEnumValue<CouponsPostRequestBodyDuration>(
        'duration', duration, (e) => e?.value);
    writer.writeIntValue('duration_in_months', durationInMonths);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('id', id);
    writer.writeIntValue('max_redemptions', maxRedemptions);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeDoubleValue('percent_off', percentOff);
    writer.writeIntValue('redeem_by', redeemBy);
  }
}
