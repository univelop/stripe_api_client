// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intent_payment_method_options_klarna.dart';
import './setup_intent_type_specific_payment_method_options_client.dart';

/// auto generated
/// Composed type wrapper for classes [SetupIntentPaymentMethodOptionsKlarna], [SetupIntentTypeSpecificPaymentMethodOptionsClient]
class SetupIntentPaymentMethodOptionsKlarnaWrapper implements Parsable {
  ///  Composed type representation for type [SetupIntentPaymentMethodOptionsKlarna]
  SetupIntentPaymentMethodOptionsKlarna? setupIntentPaymentMethodOptionsKlarna;

  ///  Composed type representation for type [SetupIntentTypeSpecificPaymentMethodOptionsClient]
  SetupIntentTypeSpecificPaymentMethodOptionsClient?
      setupIntentTypeSpecificPaymentMethodOptionsClient;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentPaymentMethodOptionsKlarnaWrapper
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = SetupIntentPaymentMethodOptionsKlarnaWrapper();
    result.setupIntentPaymentMethodOptionsKlarna =
        SetupIntentPaymentMethodOptionsKlarna();
    result.setupIntentTypeSpecificPaymentMethodOptionsClient =
        SetupIntentTypeSpecificPaymentMethodOptionsClient();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (setupIntentPaymentMethodOptionsKlarna != null) {
      setupIntentPaymentMethodOptionsKlarna!
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
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsKlarna>(
        null,
        setupIntentPaymentMethodOptionsKlarna,
        [setupIntentTypeSpecificPaymentMethodOptionsClient]);
  }
}
