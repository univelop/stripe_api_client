// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_bacs_debit_display_preference.dart';

/// auto generated
/// Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://docs.stripe.com/payments/payment-methods/bacs-debit) for more details.
class WithConfigurationPostRequestBodyBacsDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyBacsDebitDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyBacsDebit] and sets the default values.
  WithConfigurationPostRequestBodyBacsDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyBacsDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyBacsDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<
                WithConfigurationPostRequestBodyBacsDebitDisplayPreference>(
            WithConfigurationPostRequestBodyBacsDebitDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyBacsDebitDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
