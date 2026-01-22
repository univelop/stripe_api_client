// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_session_post_request_body_collected_information.dart';
import './with_session_post_request_body_line_items.dart';
import './with_session_post_request_body_shipping_options.dart';

/// auto generated
class WithSessionPostRequestBody implements Parsable {
  ///  Information about the customer collected within the Checkout Session. Can only be set when updating `embedded` or `custom` sessions.
  WithSessionPostRequestBodyCollectedInformation? collectedInformation;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A list of items the customer is purchasing.When updating line items, you must retransmit the entire array of line items.To retain an existing line item, specify its `id`.To update an existing line item, specify its `id` along with the new values of the fields to update.To add a new line item, specify one of `price` or `price_data` and `quantity`.To remove an existing line item, omit the line item's ID from the retransmitted array.To reorder a line item, specify it at the desired position in the retransmitted array.
  Iterable<WithSessionPostRequestBodyLineItems>? lineItems;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The shipping rate options to apply to this Session. Up to a maximum of 5.
  WithSessionPostRequestBodyShippingOptions? shippingOptions;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSessionPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithSessionPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['collected_information'] = (node) => collectedInformation =
        node.getObjectValue<WithSessionPostRequestBodyCollectedInformation>(
            WithSessionPostRequestBodyCollectedInformation
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['line_items'] = (node) => lineItems =
        node.getCollectionOfObjectValues<WithSessionPostRequestBodyLineItems>(
            WithSessionPostRequestBodyLineItems.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['shipping_options'] = (node) => shippingOptions =
        node.getObjectValue<WithSessionPostRequestBodyShippingOptions>(
            WithSessionPostRequestBodyShippingOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithSessionPostRequestBodyCollectedInformation>(
        'collected_information', collectedInformation);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeCollectionOfObjectValues<WithSessionPostRequestBodyLineItems>(
        'line_items', lineItems);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<WithSessionPostRequestBodyShippingOptions>(
        'shipping_options', shippingOptions);
  }
}
