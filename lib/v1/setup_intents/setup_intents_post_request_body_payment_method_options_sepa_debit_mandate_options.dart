// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_options_sepa_debit_mandate_options_reference_prefix.dart';

/// auto generated
class SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The reference_prefix property
  SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix?
      referencePrefix;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'reference_prefix'] = (node) => referencePrefix = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix>(
        'reference_prefix', referencePrefix);
    writer.writeAdditionalData(additionalData);
  }
}
