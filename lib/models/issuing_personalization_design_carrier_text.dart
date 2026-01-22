// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingPersonalizationDesignCarrierText
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The footer body text of the carrier letter.
  String? footerBody;

  ///  The footer title text of the carrier letter.
  String? footerTitle;

  ///  The header body text of the carrier letter.
  String? headerBody;

  ///  The header title text of the carrier letter.
  String? headerTitle;

  /// Instantiates a new [IssuingPersonalizationDesignCarrierText] and sets the default values.
  IssuingPersonalizationDesignCarrierText() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingPersonalizationDesignCarrierText createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingPersonalizationDesignCarrierText();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['footer_body'] =
        (node) => footerBody = node.getStringValue();
    deserializerMap['footer_title'] =
        (node) => footerTitle = node.getStringValue();
    deserializerMap['header_body'] =
        (node) => headerBody = node.getStringValue();
    deserializerMap['header_title'] =
        (node) => headerTitle = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('footer_body', footerBody);
    writer.writeStringValue('footer_title', footerTitle);
    writer.writeStringValue('header_body', headerBody);
    writer.writeStringValue('header_title', headerTitle);
    writer.writeAdditionalData(additionalData);
  }
}
