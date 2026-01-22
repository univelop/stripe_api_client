// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_configurations_post_request_body_kr_card_display_preference.dart';

/// auto generated
/// Korean cards let users pay using locally issued cards from South Korea.
class PaymentMethodConfigurationsPostRequestBodyKrCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_preference property
  PaymentMethodConfigurationsPostRequestBodyKrCardDisplayPreference?
      displayPreference;

  /// Instantiates a new [PaymentMethodConfigurationsPostRequestBodyKrCard] and sets the default values.
  PaymentMethodConfigurationsPostRequestBodyKrCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigurationsPostRequestBodyKrCard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigurationsPostRequestBodyKrCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'display_preference'] = (node) => displayPreference = node.getObjectValue<
            PaymentMethodConfigurationsPostRequestBodyKrCardDisplayPreference>(
        PaymentMethodConfigurationsPostRequestBodyKrCardDisplayPreference
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyKrCardDisplayPreference>(
        'display_preference', displayPreference);
    writer.writeAdditionalData(additionalData);
  }
}
