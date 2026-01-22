// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_wechat_pay_member1_client.dart';
import './with_intent_post_request_body_payment_method_options_wechat_pay_member1_setup_future_usage.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The app_id property
  String? appId;

  ///  The client property
  WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1Client? client;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['app_id'] = (node) => appId = node.getStringValue();
    deserializerMap['client'] = (node) => client = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1Client>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1Client
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('app_id', appId);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1Client>(
        'client', client, (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsWechatPayMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
