// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_payto_mandate_options.dart';
import './sessions_post_request_body_payment_method_options_payto_setup_future_usage.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsPayto
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions?
      mandateOptions;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsPaytoSetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsPayto] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsPayto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsPayto
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsPayto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['mandate_options'] = (node) => mandateOptions =
        node.getObjectValue<
                SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions>(
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions
                .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsPaytoSetupFutureUsage
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
            SessionsPostRequestBodyPaymentMethodOptionsPaytoMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaytoSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
