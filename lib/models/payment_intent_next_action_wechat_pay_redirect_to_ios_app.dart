// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionWechatPayRedirectToIosApp
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  An universal link that redirect to WeChat Pay app
  String? nativeUrl;

  /// Instantiates a new [PaymentIntentNextActionWechatPayRedirectToIosApp] and sets the default values.
  PaymentIntentNextActionWechatPayRedirectToIosApp() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionWechatPayRedirectToIosApp
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentNextActionWechatPayRedirectToIosApp();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['native_url'] = (node) => nativeUrl = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('native_url', nativeUrl);
    writer.writeAdditionalData(additionalData);
  }
}
