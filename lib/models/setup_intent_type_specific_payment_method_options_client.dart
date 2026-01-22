// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intent_payment_method_options_mandate_options_payto.dart';
import './setup_intent_type_specific_payment_method_options_client_verification_method.dart';

/// auto generated
class SetupIntentTypeSpecificPaymentMethodOptionsClient
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  SetupIntentPaymentMethodOptionsMandateOptionsPayto? mandateOptions;

  ///  Bank account verification method.
  SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod?
      verificationMethod;

  /// Instantiates a new [SetupIntentTypeSpecificPaymentMethodOptionsClient] and sets the default values.
  SetupIntentTypeSpecificPaymentMethodOptionsClient() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentTypeSpecificPaymentMethodOptionsClient
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentTypeSpecificPaymentMethodOptionsClient();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['mandate_options'] = (node) => mandateOptions =
        node.getObjectValue<SetupIntentPaymentMethodOptionsMandateOptionsPayto>(
            SetupIntentPaymentMethodOptionsMandateOptionsPayto
                .createFromDiscriminatorValue);
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod>(
        (stringValue) =>
            SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsMandateOptionsPayto>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            SetupIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
