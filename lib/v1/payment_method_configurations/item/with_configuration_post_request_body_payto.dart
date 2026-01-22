// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_payto_display_preference.dart';

/// auto generated
/// PayTo is a [real-time](https://docs.stripe.com/payments/real-time) payment method that enables customers in Australia to pay by providing their bank account details. Customers must accept a mandate authorizing you to debit their account. Check this [page](https://docs.stripe.com/payments/payto) for more details.
class WithConfigurationPostRequestBodyPayto
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyPaytoDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyPayto] and sets the default values.
  WithConfigurationPostRequestBodyPayto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyPayto createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyPayto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference = node
        .getObjectValue<WithConfigurationPostRequestBodyPaytoDisplayPreference>(
            WithConfigurationPostRequestBodyPaytoDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyPaytoDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
