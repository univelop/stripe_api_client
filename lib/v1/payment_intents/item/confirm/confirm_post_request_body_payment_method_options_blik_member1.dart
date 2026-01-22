// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_blik_member1_setup_future_usage.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsBlikMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The code property
  String? code;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsBlikMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsBlikMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsBlikMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsBlikMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsBlikMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['code'] = (node) => code = node.getStringValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsBlikMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsBlikMember1SetupFutureUsage
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
            ConfirmPostRequestBodyPaymentMethodOptionsBlikMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
