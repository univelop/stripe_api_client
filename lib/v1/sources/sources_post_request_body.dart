// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sources_post_request_body_flow.dart';
import './sources_post_request_body_mandate.dart';
import './sources_post_request_body_metadata.dart';
import './sources_post_request_body_owner.dart';
import './sources_post_request_body_receiver.dart';
import './sources_post_request_body_redirect.dart';
import './sources_post_request_body_source_order.dart';
import './sources_post_request_body_usage.dart';

/// auto generated
class SourcesPostRequestBody implements Parsable {
  ///  Amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources. Not supported for `receiver` type sources, where charge amount may not be specified until funds land.
  int? amount;

  ///  Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready.
  String? currency;

  ///  The `Customer` to whom the original source is attached to. Must be set when the original source is not a `Source` (e.g., `Card`).
  String? customer;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The authentication `flow` of the source to create. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`. It is generally inferred unless a type supports multiple flows.
  SourcesPostRequestBodyFlow? flow;

  ///  Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
  SourcesPostRequestBodyMandate? mandate;

  ///  The metadata property
  SourcesPostRequestBodyMetadata? metadata;

  ///  The source to share.
  String? originalSource;

  ///  Information about the owner of the payment instrument that may be used or required by particular source types.
  SourcesPostRequestBodyOwner? owner;

  ///  Optional parameters for the receiver flow. Can be set only if the source is a receiver (`flow` is `receiver`).
  SourcesPostRequestBodyReceiver? receiver;

  ///  Parameters required for the redirect flow. Required if the source is authenticated by a redirect (`flow` is `redirect`).
  SourcesPostRequestBodyRedirect? redirect;

  ///  Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
  SourcesPostRequestBodySourceOrder? sourceOrder;

  ///  An arbitrary string to be displayed on your customer's statement. As an example, if your website is `RunClub` and the item you're charging for is a race ticket, you may want to specify a `statement_descriptor` of `RunClub 5K race ticket.` While many payment types will display this information, some may not display it at all.
  String? statementDescriptor;

  ///  An optional token used to create the source. When passed, token properties will override source parameters.
  String? token;

  ///  The `type` of the source to create. Required unless `customer` and `original_source` are specified (see the [Cloning card Sources](https://docs.stripe.com/sources/connect#cloning-card-sources) guide)
  String? type_;

  ///  The usage property
  SourcesPostRequestBodyUsage? usage;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourcesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourcesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['flow'] = (node) => flow =
        node.getEnumValue<SourcesPostRequestBodyFlow>((stringValue) =>
            SourcesPostRequestBodyFlow.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['mandate'] = (node) => mandate =
        node.getObjectValue<SourcesPostRequestBodyMandate>(
            SourcesPostRequestBodyMandate.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SourcesPostRequestBodyMetadata>(
            SourcesPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['original_source'] =
        (node) => originalSource = node.getStringValue();
    deserializerMap['owner'] = (node) => owner =
        node.getObjectValue<SourcesPostRequestBodyOwner>(
            SourcesPostRequestBodyOwner.createFromDiscriminatorValue);
    deserializerMap['receiver'] = (node) => receiver =
        node.getObjectValue<SourcesPostRequestBodyReceiver>(
            SourcesPostRequestBodyReceiver.createFromDiscriminatorValue);
    deserializerMap['redirect'] = (node) => redirect =
        node.getObjectValue<SourcesPostRequestBodyRedirect>(
            SourcesPostRequestBodyRedirect.createFromDiscriminatorValue);
    deserializerMap['source_order'] = (node) => sourceOrder =
        node.getObjectValue<SourcesPostRequestBodySourceOrder>(
            SourcesPostRequestBodySourceOrder.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['token'] = (node) => token = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    deserializerMap['usage'] = (node) => usage =
        node.getEnumValue<SourcesPostRequestBodyUsage>((stringValue) =>
            SourcesPostRequestBodyUsage.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeEnumValue<SourcesPostRequestBodyFlow>(
        'flow', flow, (e) => e?.value);
    writer.writeObjectValue<SourcesPostRequestBodyMandate>('mandate', mandate);
    writer.writeObjectValue<SourcesPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('original_source', originalSource);
    writer.writeObjectValue<SourcesPostRequestBodyOwner>('owner', owner);
    writer.writeObjectValue<SourcesPostRequestBodyReceiver>(
        'receiver', receiver);
    writer.writeObjectValue<SourcesPostRequestBodyRedirect>(
        'redirect', redirect);
    writer.writeObjectValue<SourcesPostRequestBodySourceOrder>(
        'source_order', sourceOrder);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue('token', token);
    writer.writeStringValue('type', type_);
    writer.writeEnumValue<SourcesPostRequestBodyUsage>(
        'usage', usage, (e) => e?.value);
  }
}
