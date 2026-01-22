// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_boleto_display_preference.dart';

/// auto generated
/// Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://docs.stripe.com/payments/boleto) for more details.
class WithConfigurationPostRequestBodyBoleto
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyBoletoDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyBoleto] and sets the default values.
  WithConfigurationPostRequestBodyBoleto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyBoleto createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyBoleto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<
                WithConfigurationPostRequestBodyBoletoDisplayPreference>(
            WithConfigurationPostRequestBodyBoletoDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyBoletoDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
