// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_config_resource_display_preference_preference.dart';
import './payment_method_config_resource_display_preference_value.dart';

/// auto generated
class PaymentMethodConfigResourceDisplayPreference
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
  bool? overridable;

  ///  The account's display preference.
  PaymentMethodConfigResourceDisplayPreferencePreference? preference;

  ///  The effective display preference value.
  PaymentMethodConfigResourceDisplayPreferenceValue? value;

  /// Instantiates a new [PaymentMethodConfigResourceDisplayPreference] and sets the default values.
  PaymentMethodConfigResourceDisplayPreference() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigResourceDisplayPreference
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigResourceDisplayPreference();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['overridable'] =
        (node) => overridable = node.getBoolValue();
    deserializerMap['preference'] = (node) => preference = node
        .getEnumValue<PaymentMethodConfigResourceDisplayPreferencePreference>(
            (stringValue) =>
                PaymentMethodConfigResourceDisplayPreferencePreference.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['value'] = (node) => value =
        node.getEnumValue<PaymentMethodConfigResourceDisplayPreferenceValue>(
            (stringValue) => PaymentMethodConfigResourceDisplayPreferenceValue
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('overridable', value: overridable);
    writer
        .writeEnumValue<PaymentMethodConfigResourceDisplayPreferencePreference>(
            'preference', preference, (e) => e?.value);
    writer.writeEnumValue<PaymentMethodConfigResourceDisplayPreferenceValue>(
        'value', value, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
