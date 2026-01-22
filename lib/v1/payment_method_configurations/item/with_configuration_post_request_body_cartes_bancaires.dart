// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_cartes_bancaires_display_preference.dart';

/// auto generated
/// Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://docs.stripe.com/payments/cartes-bancaires) for more details.
class WithConfigurationPostRequestBodyCartesBancaires
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyCartesBancairesDisplayPreference?
      displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyCartesBancaires] and sets the default values.
  WithConfigurationPostRequestBodyCartesBancaires() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyCartesBancaires
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyCartesBancaires();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<
                WithConfigurationPostRequestBodyCartesBancairesDisplayPreference>(
            WithConfigurationPostRequestBodyCartesBancairesDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyCartesBancairesDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
