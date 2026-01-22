// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_sofort_member1_preferred_language.dart';
import './confirm_post_request_body_payment_method_options_sofort_member1_setup_future_usage.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preferred_language property
  ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1PreferredLanguage?
      preferredLanguage;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'preferred_language'] = (node) => preferredLanguage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1PreferredLanguage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1PreferredLanguage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1SetupFutureUsage
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
            ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1PreferredLanguage>(
        'preferred_language', preferredLanguage, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsSofortMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
