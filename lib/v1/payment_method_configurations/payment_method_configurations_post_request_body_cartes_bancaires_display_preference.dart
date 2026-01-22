// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_configurations_post_request_body_cartes_bancaires_display_preference_preference.dart';

/// auto generated
class PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreference
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preference property
  PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreferencePreference?
      preference;

  /// Instantiates a new [PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreference] and sets the default values.
  PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreference()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreference
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreference();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['preference'] = (node) => preference = node.getEnumValue<
            PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreferencePreference>(
        (stringValue) =>
            PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreferencePreference
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentMethodConfigurationsPostRequestBodyCartesBancairesDisplayPreferencePreference>(
        'preference', preference, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
