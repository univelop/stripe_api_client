// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_configurations_post_request_body_twint_display_preference.dart';

/// auto generated
/// Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
class PaymentMethodConfigurationsPostRequestBodyTwint
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  PaymentMethodConfigurationsPostRequestBodyTwintDisplayPreference?
      displayPreference;

  /// Instantiates a new [PaymentMethodConfigurationsPostRequestBodyTwint] and sets the default values.
  PaymentMethodConfigurationsPostRequestBodyTwint() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigurationsPostRequestBodyTwint
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigurationsPostRequestBodyTwint();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_preference'] = (node) => displayPreference =
        node.getObjectValue<
                PaymentMethodConfigurationsPostRequestBodyTwintDisplayPreference>(
            PaymentMethodConfigurationsPostRequestBodyTwintDisplayPreference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyTwintDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
