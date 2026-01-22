// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_bacs_debit_mandate_options.dart';
import './sessions_post_request_body_payment_method_options_bacs_debit_setup_future_usage.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsBacsDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  SessionsPostRequestBodyPaymentMethodOptionsBacsDebitMandateOptions?
      mandateOptions;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsBacsDebitSetupFutureUsage?
      setupFutureUsage;

  ///  The target_date property
  String? targetDate;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsBacsDebit] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsBacsDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsBacsDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsBacsDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsBacsDebitMandateOptions>(
        SessionsPostRequestBodyPaymentMethodOptionsBacsDebitMandateOptions
            .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsBacsDebitSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsBacsDebitSetupFutureUsage
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
            SessionsPostRequestBodyPaymentMethodOptionsBacsDebitMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsBacsDebitSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeAdditionalData(additionalData);
  }
}
