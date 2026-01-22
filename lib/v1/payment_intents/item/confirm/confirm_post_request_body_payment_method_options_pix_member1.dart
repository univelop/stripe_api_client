// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_pix_member1_amount_includes_iof.dart';
import './confirm_post_request_body_payment_method_options_pix_member1_setup_future_usage.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsPixMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount_includes_iof property
  ConfirmPostRequestBodyPaymentMethodOptionsPixMember1AmountIncludesIof?
      amountIncludesIof;

  ///  The expires_after_seconds property
  int? expiresAfterSeconds;

  ///  The expires_at property
  int? expiresAt;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsPixMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsPixMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsPixMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsPixMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsPixMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'amount_includes_iof'] = (node) => amountIncludesIof = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPixMember1AmountIncludesIof>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPixMember1AmountIncludesIof
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expires_after_seconds'] =
        (node) => expiresAfterSeconds = node.getIntValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPixMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPixMember1SetupFutureUsage
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
            ConfirmPostRequestBodyPaymentMethodOptionsPixMember1AmountIncludesIof>(
        'amount_includes_iof', amountIncludesIof, (e) => e?.value);
    writer.writeIntValue('expires_after_seconds', expiresAfterSeconds);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPixMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
