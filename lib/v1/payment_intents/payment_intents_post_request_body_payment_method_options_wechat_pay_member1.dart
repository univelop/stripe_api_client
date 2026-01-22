// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_wechat_pay_member1_client.dart';
import './payment_intents_post_request_body_payment_method_options_wechat_pay_member1_setup_future_usage.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The app_id property
  String? appId;

  ///  The client property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1Client?
      client;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['app_id'] = (node) => appId = node.getStringValue();
    deserializerMap['client'] = (node) => client = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1Client>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1Client
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1SetupFutureUsage
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1Client>(
        'client', client, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPayMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
