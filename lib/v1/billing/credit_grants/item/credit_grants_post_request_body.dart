// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_grants_post_request_body_expires_at.dart';
import './credit_grants_post_request_body_metadata.dart';

/// auto generated
class CreditGrantsPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The time when the billing credits created by this credit grant expire. If set to empty, the billing credits never expire.
  CreditGrantsPostRequestBodyExpiresAt? expiresAt;

  ///  Set of key-value pairs you can attach to an object. You can use this to store additional information about the object (for example, cost basis) in a structured format.
  CreditGrantsPostRequestBodyMetadata? metadata;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditGrantsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreditGrantsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt =
        node.getObjectValue<CreditGrantsPostRequestBodyExpiresAt>(
            CreditGrantsPostRequestBodyExpiresAt.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CreditGrantsPostRequestBodyMetadata>(
            CreditGrantsPostRequestBodyMetadata.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<CreditGrantsPostRequestBodyExpiresAt>(
        'expires_at', expiresAt);
    writer.writeObjectValue<CreditGrantsPostRequestBodyMetadata>(
        'metadata', metadata);
  }
}
