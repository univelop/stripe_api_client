// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './package_dimensions.dart';
import './product_default_price.dart';
import './product_marketing_feature.dart';
import './product_metadata.dart';
import './product_object.dart';
import './product_tax_code.dart';

/// auto generated
/// Products describe the specific goods or services you offer to your customers.For example, you might offer a Standard and Premium version of your goods or service; each version would be a separate Product.They can be used in conjunction with [Prices](https://api.stripe.com#prices) to configure pricing in Payment Links, Checkout, and Subscriptions.Related guides: [Set up a subscription](https://docs.stripe.com/billing/subscriptions/set-up-subscription),[share a Payment Link](https://docs.stripe.com/payment-links),[accept payments with Checkout](https://docs.stripe.com/payments/accept-a-payment#create-product-prices-upfront),and more about [Products and Prices](https://docs.stripe.com/products-prices/overview)
class Product implements AdditionalDataHolder, Parsable {
  ///  Whether the product is currently available for purchase.
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The ID of the [Price](https://docs.stripe.com/api/prices) object that is the default price for this product.
  ProductDefaultPrice? defaultPrice;

  ///  The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
  String? description;

  ///  Unique identifier for the object.
  String? id;

  ///  A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
  Iterable<String>? images;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://docs.stripe.com/payments/checkout/pricing-table).
  Iterable<ProductMarketingFeature>? marketingFeatures;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  ProductMetadata? metadata;

  ///  The product's name, meant to be displayable to the customer.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  Product_object? object;

  ///  The dimensions of this product for shipping purposes.
  PackageDimensions? packageDimensions;

  ///  Whether this product is shipped (i.e., physical goods).
  bool? shippable;

  ///  Extra information about a product which will appear on your customer's credit card statement. In the case that multiple products are billed at once, the first statement descriptor will be used. Only used for subscription payments.
  String? statementDescriptor;

  ///  A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
  ProductTaxCode? taxCode;

  ///  A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
  String? unitLabel;

  ///  Time at which the object was last updated. Measured in seconds since the Unix epoch.
  int? updated;

  ///  A URL of a publicly-accessible webpage for this product.
  String? url;

  /// Instantiates a new [Product] and sets the default values.
  Product() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Product createFromDiscriminatorValue(ParseNode parseNode) {
    return Product();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['default_price'] = (node) => defaultPrice =
        node.getObjectValue<ProductDefaultPrice>(
            ProductDefaultPrice.createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['images'] =
        (node) => images = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['marketing_features'] = (node) => marketingFeatures =
        node.getCollectionOfObjectValues<ProductMarketingFeature>(
            ProductMarketingFeature.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ProductMetadata>(
            ProductMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<Product_object>((stringValue) => Product_object.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['package_dimensions'] = (node) => packageDimensions =
        node.getObjectValue<PackageDimensions>(
            PackageDimensions.createFromDiscriminatorValue);
    deserializerMap['shippable'] = (node) => shippable = node.getBoolValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['tax_code'] = (node) => taxCode =
        node.getObjectValue<ProductTaxCode>(
            ProductTaxCode.createFromDiscriminatorValue);
    deserializerMap['unit_label'] = (node) => unitLabel = node.getStringValue();
    deserializerMap['updated'] = (node) => updated = node.getIntValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<ProductDefaultPrice>('default_price', defaultPrice);
    writer.writeStringValue('description', description);
    writer.writeStringValue('id', id);
    writer.writeCollectionOfPrimitiveValues<String?>('images', images);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeCollectionOfObjectValues<ProductMarketingFeature>(
        'marketing_features', marketingFeatures);
    writer.writeObjectValue<ProductMetadata>('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<Product_object>('object', object, (e) => e?.value);
    writer.writeObjectValue<PackageDimensions>(
        'package_dimensions', packageDimensions);
    writer.writeBoolValue('shippable', value: shippable);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeObjectValue<ProductTaxCode>('tax_code', taxCode);
    writer.writeStringValue('unit_label', unitLabel);
    writer.writeIntValue('updated', updated);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
