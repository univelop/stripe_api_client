// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_bancontact_display_preference.dart';

/// auto generated
/// Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://docs.stripe.com/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://docs.stripe.com/payments/bancontact) for more details.
class WithConfigurationPostRequestBodyBancontact
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyBancontactDisplayPreference?
      displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyBancontact] and sets the default values.
  WithConfigurationPostRequestBodyBancontact() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyBancontact
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyBancontact();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<
                WithConfigurationPostRequestBodyBancontactDisplayPreference>(
            WithConfigurationPostRequestBodyBancontactDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyBancontactDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
