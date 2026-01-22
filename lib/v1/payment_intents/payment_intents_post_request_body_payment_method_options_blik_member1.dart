// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_blik_member1_setup_future_usage.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsBlikMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The code property
  String? code;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBlikMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsBlikMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBlikMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsBlikMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsBlikMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['code'] = (node) => code = node.getStringValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBlikMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBlikMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('code', code);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBlikMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
