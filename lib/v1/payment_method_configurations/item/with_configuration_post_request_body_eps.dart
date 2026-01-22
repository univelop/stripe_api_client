// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_eps_display_preference.dart';

/// auto generated
/// EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://docs.stripe.com/payments/eps) for more details.
class WithConfigurationPostRequestBodyEps
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyEpsDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyEps] and sets the default values.
  WithConfigurationPostRequestBodyEps() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyEps createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyEps();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference = node
        .getObjectValue<WithConfigurationPostRequestBodyEpsDisplayPreference>(
            WithConfigurationPostRequestBodyEpsDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<WithConfigurationPostRequestBodyEpsDisplayPreference>(
            'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
