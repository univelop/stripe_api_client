// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_swish_member1_reference.dart';
import './with_intent_post_request_body_payment_method_options_swish_member1_setup_future_usage.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The reference property
  WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1Reference? reference;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['reference'] = (node) => reference = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1Reference>(
        WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1Reference
            .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1Reference>(
        'reference', reference);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSwishMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
