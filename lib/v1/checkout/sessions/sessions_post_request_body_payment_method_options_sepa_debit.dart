// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_sepa_debit_mandate_options.dart';
import './sessions_post_request_body_payment_method_options_sepa_debit_setup_future_usage.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsSepaDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  SessionsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions?
      mandateOptions;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsSepaDebitSetupFutureUsage?
      setupFutureUsage;

  ///  The target_date property
  String? targetDate;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsSepaDebit] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsSepaDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsSepaDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsSepaDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions>(
        SessionsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions
            .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsSepaDebitSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsSepaDebitSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['target_date'] =
        (node) => targetDate = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsSepaDebitSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeAdditionalData(additionalData);
  }
}
