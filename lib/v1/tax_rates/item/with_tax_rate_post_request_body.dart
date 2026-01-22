// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_tax_rate_post_request_body_tax_type.dart';

/// auto generated
class WithTaxRatePostRequestBody implements Parsable {
  ///  Flag determining whether the tax rate is active or inactive (archived). Inactive tax rates cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
  bool? active;

  ///  Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  String? country;

  ///  An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
  String? description;

  ///  The display name of the tax rate, which will be shown to users.
  String? displayName;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
  String? jurisdiction;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
  String? state;

  ///  The high-level tax type, such as `vat` or `sales_tax`.
  WithTaxRatePostRequestBodyTaxType? taxType;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithTaxRatePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithTaxRatePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['jurisdiction'] =
        (node) => jurisdiction = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['state'] = (node) => state = node.getStringValue();
    deserializerMap['tax_type'] = (node) => taxType =
        node.getEnumValue<WithTaxRatePostRequestBodyTaxType>((stringValue) =>
            WithTaxRatePostRequestBodyTaxType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeStringValue('country', country);
    writer.writeStringValue('description', description);
    writer.writeStringValue('display_name', displayName);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('jurisdiction', jurisdiction);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('state', state);
    writer.writeEnumValue<WithTaxRatePostRequestBodyTaxType>(
        'tax_type', taxType, (e) => e?.value);
  }
}
