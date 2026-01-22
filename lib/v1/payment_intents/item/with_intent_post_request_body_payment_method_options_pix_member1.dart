// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_pix_member1_amount_includes_iof.dart';
import './with_intent_post_request_body_payment_method_options_pix_member1_setup_future_usage.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsPixMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount_includes_iof property
  WithIntentPostRequestBodyPaymentMethodOptionsPixMember1AmountIncludesIof?
      amountIncludesIof;

  ///  The expires_after_seconds property
  int? expiresAfterSeconds;

  ///  The expires_at property
  int? expiresAt;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsPixMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsPixMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsPixMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsPixMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsPixMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'amount_includes_iof'] = (node) => amountIncludesIof = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPixMember1AmountIncludesIof>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPixMember1AmountIncludesIof
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expires_after_seconds'] =
        (node) => expiresAfterSeconds = node.getIntValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPixMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPixMember1SetupFutureUsage
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
            WithIntentPostRequestBodyPaymentMethodOptionsPixMember1AmountIncludesIof>(
        'amount_includes_iof', amountIncludesIof, (e) => e?.value);
    writer.writeIntValue('expires_after_seconds', expiresAfterSeconds);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPixMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
