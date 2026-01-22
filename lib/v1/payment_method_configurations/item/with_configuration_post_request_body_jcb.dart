// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_jcb_display_preference.dart';

/// auto generated
/// JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
class WithConfigurationPostRequestBodyJcb
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyJcbDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyJcb] and sets the default values.
  WithConfigurationPostRequestBodyJcb() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyJcb createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyJcb();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference = node
        .getObjectValue<WithConfigurationPostRequestBodyJcbDisplayPreference>(
            WithConfigurationPostRequestBodyJcbDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<WithConfigurationPostRequestBodyJcbDisplayPreference>(
            'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
