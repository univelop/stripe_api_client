// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_multibanco_setup_future_usage.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsMultibanco
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsMultibancoSetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsMultibanco] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsMultibanco() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsMultibanco
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsMultibanco();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsMultibancoSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsMultibancoSetupFutureUsage
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
            SessionsPostRequestBodyPaymentMethodOptionsMultibancoSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
