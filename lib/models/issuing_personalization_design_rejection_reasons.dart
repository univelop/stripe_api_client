// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_personalization_design_rejection_reasons_card_logo.dart';
import './issuing_personalization_design_rejection_reasons_carrier_text.dart';

/// auto generated
class IssuingPersonalizationDesignRejectionReasons
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The reason(s) the card logo was rejected.
  Iterable<IssuingPersonalizationDesignRejectionReasonsCardLogo>? cardLogo;

  ///  The reason(s) the carrier text was rejected.
  Iterable<IssuingPersonalizationDesignRejectionReasonsCarrierText>?
      carrierText;

  /// Instantiates a new [IssuingPersonalizationDesignRejectionReasons] and sets the default values.
  IssuingPersonalizationDesignRejectionReasons() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingPersonalizationDesignRejectionReasons
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IssuingPersonalizationDesignRejectionReasons();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_logo'] = (node) => cardLogo =
        node.getCollectionOfEnumValues<
                IssuingPersonalizationDesignRejectionReasonsCardLogo>(
            (stringValue) =>
                IssuingPersonalizationDesignRejectionReasonsCardLogo.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['carrier_text'] = (node) => carrierText =
        node.getCollectionOfEnumValues<
                IssuingPersonalizationDesignRejectionReasonsCarrierText>(
            (stringValue) =>
                IssuingPersonalizationDesignRejectionReasonsCarrierText.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            IssuingPersonalizationDesignRejectionReasonsCardLogo>(
        'card_logo', cardLogo, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            IssuingPersonalizationDesignRejectionReasonsCarrierText>(
        'carrier_text', carrierText, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
