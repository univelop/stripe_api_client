// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_configurations_post_request_body_cartes_bancaires_display_preference.dart';

/// auto generated
/// Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://docs.stripe.com/payments/cartes-bancaires) for more details.
class PaymentMethodConfigurationsPostRequestBodyCartesBancaires
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreference?
      displayPreference;

  /// Instantiates a new [PaymentMethodConfigurationsPostRequestBodyCartesBancaires] and sets the default values.
  PaymentMethodConfigurationsPostRequestBodyCartesBancaires()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigurationsPostRequestBodyCartesBancaires
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigurationsPostRequestBodyCartesBancaires();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'display_preference'] = (node) => displayPreference = node.getObjectValue<
            PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreference>(
        PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreference
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
