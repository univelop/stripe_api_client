// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_mobilepay_member1_capture_method.dart';
import './confirm_post_request_body_payment_method_options_mobilepay_member1_setup_future_usage.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1CaptureMethod?
      captureMethod;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1CaptureMethod>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1SetupFutureUsage
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
            ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsMobilepayMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
