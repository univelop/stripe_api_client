// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_source_post_request_body_mandate.dart';
import './with_source_post_request_body_owner.dart';
import './with_source_post_request_body_source_order.dart';

/// auto generated
class WithSourcePostRequestBody implements Parsable {
  ///  Amount associated with the source.
  int? amount;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
  WithSourcePostRequestBodyMandate? mandate;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Information about the owner of the payment instrument that may be used or required by particular source types.
  WithSourcePostRequestBodyOwner? owner;

  ///  Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
  WithSourcePostRequestBodySourceOrder? sourceOrder;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSourcePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithSourcePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['mandate'] = (node) => mandate =
        node.getObjectValue<WithSourcePostRequestBodyMandate>(
            WithSourcePostRequestBodyMandate.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['owner'] = (node) => owner =
        node.getObjectValue<WithSourcePostRequestBodyOwner>(
            WithSourcePostRequestBodyOwner.createFromDiscriminatorValue);
    deserializerMap['source_order'] = (node) => sourceOrder =
        node.getObjectValue<WithSourcePostRequestBodySourceOrder>(
            WithSourcePostRequestBodySourceOrder.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithSourcePostRequestBodyMandate>(
        'mandate', mandate);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<WithSourcePostRequestBodyOwner>('owner', owner);
    writer.writeObjectValue<WithSourcePostRequestBodySourceOrder>(
        'source_order', sourceOrder);
  }
}
