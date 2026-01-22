// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_post_request_body_payment_method_options_card_installments_plan.dart';

/// auto generated
class ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The plan property
  ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlan?
      plan;

  /// Instantiates a new [ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallments] and sets the default values.
  ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallments()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallments
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['plan'] = (node) => plan = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlan>(
        ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlan
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlan>(
        'plan', plan);
    writer.writeAdditionalData(additionalData);
  }
}
