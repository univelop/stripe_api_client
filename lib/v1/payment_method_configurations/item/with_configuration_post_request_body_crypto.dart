// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_crypto_display_preference.dart';

/// auto generated
/// [Stablecoin payments](https://docs.stripe.com/payments/stablecoin-payments) enable customers to pay in stablecoins like USDC from 100s of wallets including Phantom and Metamask.
class WithConfigurationPostRequestBodyCrypto
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyCryptoDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyCrypto] and sets the default values.
  WithConfigurationPostRequestBodyCrypto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyCrypto createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyCrypto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<
                WithConfigurationPostRequestBodyCryptoDisplayPreference>(
            WithConfigurationPostRequestBodyCryptoDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyCryptoDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
