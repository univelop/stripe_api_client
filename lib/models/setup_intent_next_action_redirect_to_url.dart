// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SetupIntentNextActionRedirectToUrl
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
  String? returnUrl;

  ///  The URL you must redirect your customer to in order to authenticate.
  String? url;

  /// Instantiates a new [SetupIntentNextActionRedirectToUrl] and sets the default values.
  SetupIntentNextActionRedirectToUrl() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentNextActionRedirectToUrl createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetupIntentNextActionRedirectToUrl();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('return_url', returnUrl);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
