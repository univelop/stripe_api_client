// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_order_post_request_body_beneficiary.dart';
import './with_order_post_request_body_metadata.dart';

/// auto generated
class WithOrderPostRequestBody implements Parsable {
  ///  Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
  WithOrderPostRequestBodyBeneficiary? beneficiary;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  WithOrderPostRequestBodyMetadata? metadata;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithOrderPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithOrderPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['beneficiary'] = (node) => beneficiary =
        node.getObjectValue<WithOrderPostRequestBodyBeneficiary>(
            WithOrderPostRequestBodyBeneficiary.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithOrderPostRequestBodyMetadata>(
            WithOrderPostRequestBodyMetadata.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithOrderPostRequestBodyBeneficiary>(
        'beneficiary', beneficiary);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithOrderPostRequestBodyMetadata>(
        'metadata', metadata);
  }
}
