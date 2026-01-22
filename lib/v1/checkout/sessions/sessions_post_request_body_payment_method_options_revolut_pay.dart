// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_revolut_pay_capture_method.dart';
import './sessions_post_request_body_payment_method_options_revolut_pay_setup_future_usage.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsRevolutPay
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  SessionsPostRequestBodyPaymentMethodOptionsRevolutPayCaptureMethod?
      captureMethod;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsRevolutPaySetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsRevolutPay] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsRevolutPay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsRevolutPay
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsRevolutPay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsRevolutPayCaptureMethod>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsRevolutPayCaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsRevolutPaySetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsRevolutPaySetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsRevolutPayCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsRevolutPaySetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
