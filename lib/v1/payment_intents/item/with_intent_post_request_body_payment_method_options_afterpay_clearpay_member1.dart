// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_afterpay_clearpay_member1_capture_method.dart';
import './with_intent_post_request_body_payment_method_options_afterpay_clearpay_member1_setup_future_usage.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1CaptureMethod?
      captureMethod;

  ///  The reference property
  String? reference;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1CaptureMethod>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1SetupFutureUsage
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
            WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('reference', reference);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpayMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
