// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_physical_bundle_features_card_logo.dart';
import './issuing_physical_bundle_features_carrier_text.dart';
import './issuing_physical_bundle_features_second_line.dart';

/// auto generated
class IssuingPhysicalBundleFeatures implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The policy for how to use card logo images in a card design with this physical bundle.
  IssuingPhysicalBundleFeaturesCardLogo? cardLogo;

  ///  The policy for how to use carrier letter text in a card design with this physical bundle.
  IssuingPhysicalBundleFeaturesCarrierText? carrierText;

  ///  The policy for how to use a second line on a card with this physical bundle.
  IssuingPhysicalBundleFeaturesSecondLine? secondLine;

  /// Instantiates a new [IssuingPhysicalBundleFeatures] and sets the default values.
  IssuingPhysicalBundleFeatures() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingPhysicalBundleFeatures createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingPhysicalBundleFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_logo'] = (node) => cardLogo =
        node.getEnumValue<IssuingPhysicalBundleFeaturesCardLogo>(
            (stringValue) => IssuingPhysicalBundleFeaturesCardLogo.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['carrier_text'] = (node) => carrierText =
        node.getEnumValue<IssuingPhysicalBundleFeaturesCarrierText>(
            (stringValue) => IssuingPhysicalBundleFeaturesCarrierText.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['second_line'] = (node) => secondLine =
        node.getEnumValue<IssuingPhysicalBundleFeaturesSecondLine>(
            (stringValue) => IssuingPhysicalBundleFeaturesSecondLine.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<IssuingPhysicalBundleFeaturesCardLogo>(
        'card_logo', cardLogo, (e) => e?.value);
    writer.writeEnumValue<IssuingPhysicalBundleFeaturesCarrierText>(
        'carrier_text', carrierText, (e) => e?.value);
    writer.writeEnumValue<IssuingPhysicalBundleFeaturesSecondLine>(
        'second_line', secondLine, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
