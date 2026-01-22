// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_configurations_post_request_body_paypal_display_preference.dart';

/// auto generated
/// PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://docs.stripe.com/payments/paypal) for more details.
class PaymentMethodConfigurationsPostRequestBodyPaypal
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  PaymentMethodConfigurationsPostRequestBodyPaypalDisplayPreference?
      displayPreference;

  /// Instantiates a new [PaymentMethodConfigurationsPostRequestBodyPaypal] and sets the default values.
  PaymentMethodConfigurationsPostRequestBodyPaypal() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigurationsPostRequestBodyPaypal
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigurationsPostRequestBodyPaypal();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'display_preference'] = (node) => displayPreference = node.getObjectValue<
            PaymentMethodConfigurationsPostRequestBodyPaypalDisplayPreference>(
        PaymentMethodConfigurationsPostRequestBodyPaypalDisplayPreference
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyPaypalDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
