// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_sepa_debit_mandate_options_reference_prefix.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The reference_prefix property
  WithIntentPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix?
      referencePrefix;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'reference_prefix'] = (node) => referencePrefix = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix>(
        WithIntentPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix>(
        'reference_prefix', referencePrefix);
    writer.writeAdditionalData(additionalData);
  }
}
