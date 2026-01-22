// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_promptpay_display_preference.dart';

/// auto generated
/// PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://docs.stripe.com/payments/promptpay) for more details.
class WithConfigurationPostRequestBodyPromptpay
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  WithConfigurationPostRequestBodyPromptpayDisplayPreference? displayPreference;

  /// Instantiates a new [WithConfigurationPostRequestBodyPromptpay] and sets the default values.
  WithConfigurationPostRequestBodyPromptpay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyPromptpay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyPromptpay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<
                WithConfigurationPostRequestBodyPromptpayDisplayPreference>(
            WithConfigurationPostRequestBodyPromptpayDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyPromptpayDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
