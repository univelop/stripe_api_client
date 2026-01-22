// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './registrations_post_request_body_active_from.dart';
import './registrations_post_request_body_country_options.dart';

/// auto generated
class RegistrationsPostRequestBody implements Parsable {
  ///  Time at which the Tax Registration becomes active. It can be either `now` to indicate the current time, or a future timestamp measured in seconds since the Unix epoch.
  RegistrationsPostRequestBodyActiveFrom? activeFrom;

  ///  Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
  String? country;

  ///  Specific options for a registration in the specified `country`.
  RegistrationsPostRequestBodyCountryOptions? countryOptions;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  If set, the Tax Registration stops being active at this time. If not set, the Tax Registration will be active indefinitely. Timestamp measured in seconds since the Unix epoch.
  int? expiresAt;

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
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['country_options'] = (node) => countryOptions =
        node.getObjectValue<RegistrationsPostRequestBodyCountryOptions>(
            RegistrationsPostRequestBodyCountryOptions
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<RegistrationsPostRequestBodyActiveFrom>(
        'active_from', activeFrom);
    writer.writeStringValue('country', country);
    writer.writeObjectValue<RegistrationsPostRequestBodyCountryOptions>(
        'country_options', countryOptions);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('expires_at', expiresAt);
  }
}
