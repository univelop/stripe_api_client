// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_billie_member1_capture_method.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsBillieMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBillieMember1CaptureMethod?
      captureMethod;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsBillieMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBillieMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsBillieMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsBillieMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBillieMember1CaptureMethod>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBillieMember1CaptureMethod
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBillieMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
