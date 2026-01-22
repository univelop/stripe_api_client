// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_grabpay_member1_setup_future_usage.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsGrabpayMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsGrabpayMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsGrabpayMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsGrabpayMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsGrabpayMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsGrabpayMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsGrabpayMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsGrabpayMember1SetupFutureUsage
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
            WithIntentPostRequestBodyPaymentMethodOptionsGrabpayMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
