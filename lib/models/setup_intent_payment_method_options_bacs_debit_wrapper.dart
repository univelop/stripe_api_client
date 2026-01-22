// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intent_payment_method_options_bacs_debit.dart';
import './setup_intent_type_specific_payment_method_options_client.dart';

/// auto generated
/// Composed type wrapper for classes [SetupIntentPaymentMethodOptionsBacsDebit], [SetupIntentTypeSpecificPaymentMethodOptionsClient]
class SetupIntentPaymentMethodOptionsBacsDebitWrapper implements Parsable {
  ///  Composed type representation for type [SetupIntentPaymentMethodOptionsBacsDebit]
  SetupIntentPaymentMethodOptionsBacsDebit?
      setupIntentPaymentMethodOptionsBacsDebit;

  ///  Composed type representation for type [SetupIntentTypeSpecificPaymentMethodOptionsClient]
  SetupIntentTypeSpecificPaymentMethodOptionsClient?
      setupIntentTypeSpecificPaymentMethodOptionsClient;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentPaymentMethodOptionsBacsDebitWrapper
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = SetupIntentPaymentMethodOptionsBacsDebitWrapper();
    result.setupIntentPaymentMethodOptionsBacsDebit =
        SetupIntentPaymentMethodOptionsBacsDebit();
    result.setupIntentTypeSpecificPaymentMethodOptionsClient =
        SetupIntentTypeSpecificPaymentMethodOptionsClient();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (setupIntentPaymentMethodOptionsBacsDebit != null) {
      setupIntentPaymentMethodOptionsBacsDebit!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (setupIntentTypeSpecificPaymentMethodOptionsClient != null) {
      setupIntentTypeSpecificPaymentMethodOptionsClient!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsBacsDebit>(
        null,
        setupIntentPaymentMethodOptionsBacsDebit,
        [setupIntentTypeSpecificPaymentMethodOptionsClient]);
  }
}
