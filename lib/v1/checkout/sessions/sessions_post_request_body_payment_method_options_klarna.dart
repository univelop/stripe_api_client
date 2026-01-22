// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_klarna_capture_method.dart';
import './sessions_post_request_body_payment_method_options_klarna_setup_future_usage.dart';
import './sessions_post_request_body_payment_method_options_klarna_subscriptions.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsKlarna
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  SessionsPostRequestBodyPaymentMethodOptionsKlarnaCaptureMethod? captureMethod;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsKlarnaSetupFutureUsage?
      setupFutureUsage;

  ///  The subscriptions property
  SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions? subscriptions;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsKlarna] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsKlarna() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsKlarna
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<
                SessionsPostRequestBodyPaymentMethodOptionsKlarnaCaptureMethod>(
            (stringValue) =>
                SessionsPostRequestBodyPaymentMethodOptionsKlarnaCaptureMethod
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsKlarnaSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsKlarnaSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['subscriptions'] = (node) => subscriptions =
        node.getObjectValue<
                SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions>(
            SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsKlarnaCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsKlarnaSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions>(
        'subscriptions', subscriptions);
    writer.writeAdditionalData(additionalData);
  }
}
