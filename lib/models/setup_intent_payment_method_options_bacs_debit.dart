// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intent_payment_method_options_mandate_options_bacs_debit.dart';

/// auto generated
class SetupIntentPaymentMethodOptionsBacsDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit? mandateOptions;

  /// Instantiates a new [SetupIntentPaymentMethodOptionsBacsDebit] and sets the default values.
  SetupIntentPaymentMethodOptionsBacsDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentPaymentMethodOptionsBacsDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetupIntentPaymentMethodOptionsBacsDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['mandate_options'] = (node) => mandateOptions = node
        .getObjectValue<SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit>(
            SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit>(
        'mandate_options', mandateOptions);
    writer.writeAdditionalData(additionalData);
  }
}
