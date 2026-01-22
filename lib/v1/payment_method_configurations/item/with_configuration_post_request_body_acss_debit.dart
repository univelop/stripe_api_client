// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_acss_debit_display_preference.dart';

/// auto generated
/// Canadian pre-authorized debit payments, check this [page](https://docs.stripe.com/payments/acss-debit) for more details like country availability.
class WithConfigurationPostRequestBodyAcssDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyAcssDebitDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyAcssDebit] and sets the default values.
  WithConfigurationPostRequestBodyAcssDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyAcssDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<
                WithConfigurationPostRequestBodyAcssDebitDisplayPreference>(
            WithConfigurationPostRequestBodyAcssDebitDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyAcssDebitDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
