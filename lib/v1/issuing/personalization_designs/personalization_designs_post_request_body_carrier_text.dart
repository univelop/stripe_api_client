// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './personalization_designs_post_request_body_carrier_text_footer_body.dart';
import './personalization_designs_post_request_body_carrier_text_footer_title.dart';
import './personalization_designs_post_request_body_carrier_text_header_body.dart';
import './personalization_designs_post_request_body_carrier_text_header_title.dart';

/// auto generated
/// Hash containing carrier text, for use with physical bundles that support carrier text.
class PersonalizationDesignsPostRequestBodyCarrierText
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The footer_body property
  PersonalizationDesignsPostRequestBodyCarrierTextFooterBody? footerBody;

  ///  The footer_title property
  PersonalizationDesignsPostRequestBodyCarrierTextFooterTitle? footerTitle;

  ///  The header_body property
  PersonalizationDesignsPostRequestBodyCarrierTextHeaderBody? headerBody;

  ///  The header_title property
  PersonalizationDesignsPostRequestBodyCarrierTextHeaderTitle? headerTitle;

  /// Instantiates a new [PersonalizationDesignsPostRequestBodyCarrierText] and sets the default values.
  PersonalizationDesignsPostRequestBodyCarrierText() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonalizationDesignsPostRequestBodyCarrierText
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PersonalizationDesignsPostRequestBodyCarrierText();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['footer_body'] = (node) => footerBody = node.getObjectValue<
            PersonalizationDesignsPostRequestBodyCarrierTextFooterBody>(
        PersonalizationDesignsPostRequestBodyCarrierTextFooterBody
            .createFromDiscriminatorValue);
    deserializerMap['footer_title'] = (node) => footerTitle =
        node.getObjectValue<
                PersonalizationDesignsPostRequestBodyCarrierTextFooterTitle>(
            PersonalizationDesignsPostRequestBodyCarrierTextFooterTitle
                .createFromDiscriminatorValue);
    deserializerMap['header_body'] = (node) => headerBody = node.getObjectValue<
            PersonalizationDesignsPostRequestBodyCarrierTextHeaderBody>(
        PersonalizationDesignsPostRequestBodyCarrierTextHeaderBody
            .createFromDiscriminatorValue);
    deserializerMap['header_title'] = (node) => headerTitle =
        node.getObjectValue<
                PersonalizationDesignsPostRequestBodyCarrierTextHeaderTitle>(
            PersonalizationDesignsPostRequestBodyCarrierTextHeaderTitle
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PersonalizationDesignsPostRequestBodyCarrierTextFooterBody>(
        'footer_body', footerBody);
    writer.writeObjectValue<
            PersonalizationDesignsPostRequestBodyCarrierTextFooterTitle>(
        'footer_title', footerTitle);
    writer.writeObjectValue<
            PersonalizationDesignsPostRequestBodyCarrierTextHeaderBody>(
        'header_body', headerBody);
    writer.writeObjectValue<
            PersonalizationDesignsPostRequestBodyCarrierTextHeaderTitle>(
        'header_title', headerTitle);
    writer.writeAdditionalData(additionalData);
  }
}
