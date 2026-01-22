// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_post_request_body_payment_method_options_card_installments.dart';

/// auto generated
class ConfirmationTokensPostRequestBodyPaymentMethodOptionsCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The installments property
  ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallments?
      installments;

  /// Instantiates a new [ConfirmationTokensPostRequestBodyPaymentMethodOptionsCard] and sets the default values.
  ConfirmationTokensPostRequestBodyPaymentMethodOptionsCard()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensPostRequestBodyPaymentMethodOptionsCard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensPostRequestBodyPaymentMethodOptionsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'installments'] = (node) => installments = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallments>(
        ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallments
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallments>(
        'installments', installments);
    writer.writeAdditionalData(additionalData);
  }
}
