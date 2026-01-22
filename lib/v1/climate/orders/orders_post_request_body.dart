// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './orders_post_request_body_beneficiary.dart';
import './orders_post_request_body_metadata.dart';

/// auto generated
class OrdersPostRequestBody implements Parsable {
  ///  Requested amount of carbon removal units. Either this or `metric_tons` must be specified.
  int? amount;

  ///  Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
  OrdersPostRequestBodyBeneficiary? beneficiary;

  ///  Request currency for the order as a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a supported [settlement currency for your account](https://stripe.com/docs/currencies). If omitted, the account's default currency will be used.
  String? currency;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  OrdersPostRequestBodyMetadata? metadata;

  ///  Requested number of tons for the order. Either this or `amount` must be specified.
  String? metricTons;

  ///  Unique identifier of the Climate product.
  String? product;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OrdersPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return OrdersPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['beneficiary'] = (node) => beneficiary =
        node.getObjectValue<OrdersPostRequestBodyBeneficiary>(
            OrdersPostRequestBodyBeneficiary.createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<OrdersPostRequestBodyMetadata>(
            OrdersPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['metric_tons'] =
        (node) => metricTons = node.getStringValue();
    deserializerMap['product'] = (node) => product = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<OrdersPostRequestBodyBeneficiary>(
        'beneficiary', beneficiary);
    writer.writeStringValue('currency', currency);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<OrdersPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('metric_tons', metricTons);
    writer.writeStringValue('product', product);
  }
}
