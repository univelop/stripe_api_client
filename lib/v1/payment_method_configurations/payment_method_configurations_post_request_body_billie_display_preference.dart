// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_configurations_post_request_body_billie_display_preference_preference.dart';

/// auto generated
class PaymentMethodConfigurationsPostRequestBodyBillieDisplayPreference
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preference property
  PaymentMethodConfigurationsPostRequestBodyBillieDisplayPreferencePreference?
      preference;

  /// Instantiates a new [PaymentMethodConfigurationsPostRequestBodyBillieDisplayPreference] and sets the default values.
  PaymentMethodConfigurationsPostRequestBodyBillieDisplayPreference()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigurationsPostRequestBodyBillieDisplayPreference
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigurationsPostRequestBodyBillieDisplayPreference();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['preference'] = (node) => preference = node.getEnumValue<
            PaymentMethodConfigurationsPostRequestBodyBillieDisplayPreferencePreference>(
        (stringValue) =>
            PaymentMethodConfigurationsPostRequestBodyBillieDisplayPreferencePreference
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
            PaymentMethodConfigurationsPostRequestBodyBillieDisplayPreferencePreference>(
        'preference', preference, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
