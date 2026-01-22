// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './settings_post_request_body_defaults_tax_behavior.dart';

/// auto generated
/// Default configuration to be used on Stripe Tax calculations.
class SettingsPostRequestBodyDefaults
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tax_behavior property
  SettingsPostRequestBodyDefaultsTaxBehavior? taxBehavior;

  ///  The tax_code property
  String? taxCode;

  /// Instantiates a new [SettingsPostRequestBodyDefaults] and sets the default values.
  SettingsPostRequestBodyDefaults() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SettingsPostRequestBodyDefaults createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SettingsPostRequestBodyDefaults();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<SettingsPostRequestBodyDefaultsTaxBehavior>(
            (stringValue) => SettingsPostRequestBodyDefaultsTaxBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<SettingsPostRequestBodyDefaultsTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeStringValue('tax_code', taxCode);
    writer.writeAdditionalData(additionalData);
  }
}
