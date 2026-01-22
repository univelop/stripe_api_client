// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './post_request_body_description.dart';
import './post_request_body_images.dart';
import './post_request_body_marketing_features.dart';
import './post_request_body_package_dimensions.dart';
import './post_request_body_tax_code.dart';
import './post_request_body_unit_label.dart';
import './post_request_body_url.dart';

/// auto generated
class PostRequestBody implements Parsable {
  ///  Whether the product is available for purchase.
  bool? active;

  ///  The ID of the [Price](https://docs.stripe.com/api/prices) object that is the default price for this product.
  String? defaultPrice;

  ///  The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
  PostRequestBodyDescription? description;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
  PostRequestBodyImages? images;

  ///  A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://docs.stripe.com/payments/checkout/pricing-table).
  PostRequestBodyMarketingFeatures? marketingFeatures;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The product's name, meant to be displayable to the customer.
  String? name;

  ///  The dimensions of this product for shipping purposes.
  PostRequestBodyPackageDimensions? packageDimensions;

  ///  Whether this product is shipped (i.e., physical goods).
  bool? shippable;

  ///  An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped. It must contain at least one letter. May only be set if `type=service`. Only used for subscription payments.
  String? statementDescriptor;

  ///  A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
  PostRequestBodyTaxCode? taxCode;

  ///  A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal. May only be set if `type=service`.
  PostRequestBodyUnitLabel? unitLabel;

  ///  A URL of a publicly-accessible webpage for this product.
  PostRequestBodyUrl? url;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PostRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
    return PostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['default_price'] =
        (node) => defaultPrice = node.getStringValue();
    deserializerMap['description'] = (node) => description =
        node.getObjectValue<PostRequestBodyDescription>(
            PostRequestBodyDescription.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['images'] = (node) => images =
        node.getObjectValue<PostRequestBodyImages>(
            PostRequestBodyImages.createFromDiscriminatorValue);
    deserializerMap['marketing_features'] = (node) => marketingFeatures =
        node.getObjectValue<PostRequestBodyMarketingFeatures>(
            PostRequestBodyMarketingFeatures.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['package_dimensions'] = (node) => packageDimensions =
        node.getObjectValue<PostRequestBodyPackageDimensions>(
            PostRequestBodyPackageDimensions.createFromDiscriminatorValue);
    deserializerMap['shippable'] = (node) => shippable = node.getBoolValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['tax_code'] = (node) => taxCode =
        node.getObjectValue<PostRequestBodyTaxCode>(
            PostRequestBodyTaxCode.createFromDiscriminatorValue);
    deserializerMap['unit_label'] = (node) => unitLabel =
        node.getObjectValue<PostRequestBodyUnitLabel>(
            PostRequestBodyUnitLabel.createFromDiscriminatorValue);
    deserializerMap['url'] = (node) => url =
        node.getObjectValue<PostRequestBodyUrl>(
            PostRequestBodyUrl.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeStringValue('default_price', defaultPrice);
    writer.writeObjectValue<PostRequestBodyDescription>(
        'description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<PostRequestBodyImages>('images', images);
    writer.writeObjectValue<PostRequestBodyMarketingFeatures>(
        'marketing_features', marketingFeatures);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<PostRequestBodyPackageDimensions>(
        'package_dimensions', packageDimensions);
    writer.writeBoolValue('shippable', value: shippable);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeObjectValue<PostRequestBodyTaxCode>('tax_code', taxCode);
    writer.writeObjectValue<PostRequestBodyUnitLabel>('unit_label', unitLabel);
    writer.writeObjectValue<PostRequestBodyUrl>('url', url);
  }
}
