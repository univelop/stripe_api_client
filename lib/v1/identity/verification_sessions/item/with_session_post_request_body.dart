// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_session_post_request_body_metadata.dart';
import './with_session_post_request_body_options.dart';
import './with_session_post_request_body_provided_details.dart';
import './with_session_post_request_body_type.dart';

/// auto generated
class WithSessionPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  WithSessionPostRequestBodyMetadata? metadata;

  ///  A set of options for the session’s verification checks.
  WithSessionPostRequestBodyOptions? options;

  ///  Details provided about the user being verified. These details may be shown to the user.
  WithSessionPostRequestBodyProvidedDetails? providedDetails;

  ///  The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed.
  WithSessionPostRequestBodyType? type_;

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
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithSessionPostRequestBodyMetadata>(
            WithSessionPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['options'] = (node) => options =
        node.getObjectValue<WithSessionPostRequestBodyOptions>(
            WithSessionPostRequestBodyOptions.createFromDiscriminatorValue);
    deserializerMap['provided_details'] = (node) => providedDetails =
        node.getObjectValue<WithSessionPostRequestBodyProvidedDetails>(
            WithSessionPostRequestBodyProvidedDetails
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<WithSessionPostRequestBodyType>((stringValue) =>
            WithSessionPostRequestBodyType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithSessionPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<WithSessionPostRequestBodyOptions>(
        'options', options);
    writer.writeObjectValue<WithSessionPostRequestBodyProvidedDetails>(
        'provided_details', providedDetails);
    writer.writeEnumValue<WithSessionPostRequestBodyType>(
        'type', type_, (e) => e?.value);
  }
}
