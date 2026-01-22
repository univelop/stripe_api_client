// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionWechatPayRedirectToAndroidApp
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  app_id is the APP ID registered on WeChat open platform
  String? appId;

  ///  nonce_str is a random string
  String? nonceStr;

  ///  package is static value
  String? package;

  ///  an unique merchant ID assigned by WeChat Pay
  String? partnerId;

  ///  an unique trading ID assigned by WeChat Pay
  String? prepayId;

  ///  A signature
  String? sign;

  ///  Specifies the current time in epoch format
  String? timestamp;

  /// Instantiates a new [PaymentIntentNextActionWechatPayRedirectToAndroidApp] and sets the default values.
  PaymentIntentNextActionWechatPayRedirectToAndroidApp() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionWechatPayRedirectToAndroidApp
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentNextActionWechatPayRedirectToAndroidApp();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['app_id'] = (node) => appId = node.getStringValue();
    deserializerMap['nonce_str'] = (node) => nonceStr = node.getStringValue();
    deserializerMap['package'] = (node) => package = node.getStringValue();
    deserializerMap['partner_id'] = (node) => partnerId = node.getStringValue();
    deserializerMap['prepay_id'] = (node) => prepayId = node.getStringValue();
    deserializerMap['sign'] = (node) => sign = node.getStringValue();
    deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('app_id', appId);
    writer.writeStringValue('nonce_str', nonceStr);
    writer.writeStringValue('package', package);
    writer.writeStringValue('partner_id', partnerId);
    writer.writeStringValue('prepay_id', prepayId);
    writer.writeStringValue('sign', sign);
    writer.writeStringValue('timestamp', timestamp);
    writer.writeAdditionalData(additionalData);
  }
}
