// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './refunds_post_request_body_metadata.dart';

/// auto generated
class RefundsPostRequestBody implements Parsable {
  ///  A positive integer, in _cents (or local equivalent)_, representing how much of this fee to refund. Can refund only up to the remaining unrefunded amount of the fee.
  int? amount;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  RefundsPostRequestBodyMetadata? metadata;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RefundsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RefundsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<RefundsPostRequestBodyMetadata>(
            RefundsPostRequestBodyMetadata.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<RefundsPostRequestBodyMetadata>(
        'metadata', metadata);
  }
}
