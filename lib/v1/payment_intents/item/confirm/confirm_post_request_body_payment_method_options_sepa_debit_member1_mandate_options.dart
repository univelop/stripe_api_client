// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_sepa_debit_member1_mandate_options_reference_prefix.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsSepaDebitMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The reference_prefix property
  ConfirmPostRequestBodyPaymentMethodOptionsSepaDebitMember1MandateOptionsReferencePrefix?
      referencePrefix;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsSepaDebitMember1MandateOptions] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsSepaDebitMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsSepaDebitMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsSepaDebitMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'reference_prefix'] = (node) => referencePrefix = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsSepaDebitMember1MandateOptionsReferencePrefix>(
        ConfirmPostRequestBodyPaymentMethodOptionsSepaDebitMember1MandateOptionsReferencePrefix
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsSepaDebitMember1MandateOptionsReferencePrefix>(
        'reference_prefix', referencePrefix);
    writer.writeAdditionalData(additionalData);
  }
}
