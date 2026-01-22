// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_price_post_request_body_tax_behavior.dart';

/// auto generated
class WithPricePostRequestBody implements Parsable {
  ///  Whether the price can be used for new purchases. Defaults to `true`.
  bool? active;

  ///  Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
  String? currencyOptions;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
  String? lookupKey;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  A brief description of the price, hidden from customers.
  String? nickname;

  ///  Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
  WithPricePostRequestBodyTaxBehavior? taxBehavior;

  ///  If set to true, will atomically remove the lookup key from the existing price, and assign it to this price.
  bool? transferLookupKey;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPricePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPricePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['currency_options'] =
        (node) => currencyOptions = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['lookup_key'] = (node) => lookupKey = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['nickname'] = (node) => nickname = node.getStringValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<WithPricePostRequestBodyTaxBehavior>((stringValue) =>
            WithPricePostRequestBodyTaxBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transfer_lookup_key'] =
        (node) => transferLookupKey = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeStringValue('currency_options', currencyOptions);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('lookup_key', lookupKey);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('nickname', nickname);
    writer.writeEnumValue<WithPricePostRequestBodyTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeBoolValue('transfer_lookup_key', value: transferLookupKey);
  }
}
