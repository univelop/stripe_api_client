// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_active_from.dart';
import './registrations_post_request_body_expires_at.dart';

/// auto generated
class RegistrationsPostRequestBody implements Parsable {
  ///  Time at which the registration becomes active. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
  RegistrationsPostRequestBodyActiveFrom? activeFrom;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
  RegistrationsPostRequestBodyExpiresAt? expiresAt;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RegistrationsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RegistrationsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active_from'] = (node) => activeFrom = node.getObjectValue<
            RegistrationsPostRequestBodyActiveFrom>(
        RegistrationsPostRequestBodyActiveFrom.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt =
        node.getObjectValue<RegistrationsPostRequestBodyExpiresAt>(
            RegistrationsPostRequestBodyExpiresAt.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<RegistrationsPostRequestBodyActiveFrom>(
        'active_from', activeFrom);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<RegistrationsPostRequestBodyExpiresAt>(
        'expires_at', expiresAt);
  }
}
