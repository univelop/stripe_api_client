// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_zip_display_preference.dart';

/// auto generated
/// Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://docs.stripe.com/payments/zip) for more details like country availability.
class WithConfigurationPostRequestBodyZip
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyZipDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyZip] and sets the default values.
  WithConfigurationPostRequestBodyZip() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyZip createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyZip();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference = node
        .getObjectValue<WithConfigurationPostRequestBodyZipDisplayPreference>(
            WithConfigurationPostRequestBodyZipDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<WithConfigurationPostRequestBodyZipDisplayPreference>(
            'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
