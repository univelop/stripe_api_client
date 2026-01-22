// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionAlipayHandleRedirect
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The native data to be used with Alipay SDK you must redirect your customer to in order to authenticate the payment in an Android App.
  String? nativeData;

  ///  The native URL you must redirect your customer to in order to authenticate the payment in an iOS App.
  String? nativeUrl;

  ///  If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
  String? returnUrl;

  ///  The URL you must redirect your customer to in order to authenticate the payment.
  String? url;

  /// Instantiates a new [PaymentIntentNextActionAlipayHandleRedirect] and sets the default values.
  PaymentIntentNextActionAlipayHandleRedirect() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionAlipayHandleRedirect
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentNextActionAlipayHandleRedirect();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['native_data'] =
        (node) => nativeData = node.getStringValue();
    deserializerMap['native_url'] = (node) => nativeUrl = node.getStringValue();
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('native_data', nativeData);
    writer.writeStringValue('native_url', nativeUrl);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
