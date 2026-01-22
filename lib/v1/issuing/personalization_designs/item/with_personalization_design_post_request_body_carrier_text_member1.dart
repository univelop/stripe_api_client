// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_personalization_design_post_request_body_carrier_text_member1_footer_body.dart';
import './with_personalization_design_post_request_body_carrier_text_member1_footer_title.dart';
import './with_personalization_design_post_request_body_carrier_text_member1_header_body.dart';
import './with_personalization_design_post_request_body_carrier_text_member1_header_title.dart';

/// auto generated
class WithPersonalizationDesignPostRequestBodyCarrierTextMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The footer_body property
  WithPersonalizationDesignPostRequestBodyCarrierTextMember1FooterBody?
      footerBody;

  ///  The footer_title property
  WithPersonalizationDesignPostRequestBodyCarrierTextMember1FooterTitle?
      footerTitle;

  ///  The header_body property
  WithPersonalizationDesignPostRequestBodyCarrierTextMember1HeaderBody?
      headerBody;

  ///  The header_title property
  WithPersonalizationDesignPostRequestBodyCarrierTextMember1HeaderTitle?
      headerTitle;

  /// Instantiates a new [WithPersonalizationDesignPostRequestBodyCarrierTextMember1] and sets the default values.
  WithPersonalizationDesignPostRequestBodyCarrierTextMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPersonalizationDesignPostRequestBodyCarrierTextMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPersonalizationDesignPostRequestBodyCarrierTextMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['footer_body'] = (node) => footerBody = node.getObjectValue<
            WithPersonalizationDesignPostRequestBodyCarrierTextMember1FooterBody>(
        WithPersonalizationDesignPostRequestBodyCarrierTextMember1FooterBody
            .createFromDiscriminatorValue);
    deserializerMap[
        'footer_title'] = (node) => footerTitle = node.getObjectValue<
            WithPersonalizationDesignPostRequestBodyCarrierTextMember1FooterTitle>(
        WithPersonalizationDesignPostRequestBodyCarrierTextMember1FooterTitle
            .createFromDiscriminatorValue);
    deserializerMap['header_body'] = (node) => headerBody = node.getObjectValue<
            WithPersonalizationDesignPostRequestBodyCarrierTextMember1HeaderBody>(
        WithPersonalizationDesignPostRequestBodyCarrierTextMember1HeaderBody
            .createFromDiscriminatorValue);
    deserializerMap[
        'header_title'] = (node) => headerTitle = node.getObjectValue<
            WithPersonalizationDesignPostRequestBodyCarrierTextMember1HeaderTitle>(
        WithPersonalizationDesignPostRequestBodyCarrierTextMember1HeaderTitle
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPersonalizationDesignPostRequestBodyCarrierTextMember1FooterBody>(
        'footer_body', footerBody);
    writer.writeObjectValue<
            WithPersonalizationDesignPostRequestBodyCarrierTextMember1FooterTitle>(
        'footer_title', footerTitle);
    writer.writeObjectValue<
            WithPersonalizationDesignPostRequestBodyCarrierTextMember1HeaderBody>(
        'header_body', headerBody);
    writer.writeObjectValue<
            WithPersonalizationDesignPostRequestBodyCarrierTextMember1HeaderTitle>(
        'header_title', headerTitle);
    writer.writeAdditionalData(additionalData);
  }
}
