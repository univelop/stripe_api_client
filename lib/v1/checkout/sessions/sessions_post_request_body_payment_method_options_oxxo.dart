// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_oxxo_setup_future_usage.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsOxxo
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The expires_after_days property
  int? expiresAfterDays;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsOxxoSetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsOxxo] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsOxxo() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsOxxo
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsOxxo();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expires_after_days'] =
        (node) => expiresAfterDays = node.getIntValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsOxxoSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsOxxoSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('expires_after_days', expiresAfterDays);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsOxxoSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
