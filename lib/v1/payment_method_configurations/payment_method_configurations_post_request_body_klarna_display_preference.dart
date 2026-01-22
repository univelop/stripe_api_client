// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_configurations_post_request_body_klarna_display_preference_preference.dart';

/// auto generated
class PaymentMethodConfigurationsPostRequestBodyKlarnaDisplayPreference
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preference property
  PaymentMethodConfigurationsPostRequestBodyKlarnaDisplayPreferencePreference?
      preference;

  /// Instantiates a new [PaymentMethodConfigurationsPostRequestBodyKlarnaDisplayPreference] and sets the default values.
  PaymentMethodConfigurationsPostRequestBodyKlarnaDisplayPreference()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigurationsPostRequestBodyKlarnaDisplayPreference
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigurationsPostRequestBodyKlarnaDisplayPreference();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['preference'] = (node) => preference = node.getEnumValue<
            PaymentMethodConfigurationsPostRequestBodyKlarnaDisplayPreferencePreference>(
        (stringValue) =>
            PaymentMethodConfigurationsPostRequestBodyKlarnaDisplayPreferencePreference
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
            PaymentMethodConfigurationsPostRequestBodyKlarnaDisplayPreferencePreference>(
        'preference', preference, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
