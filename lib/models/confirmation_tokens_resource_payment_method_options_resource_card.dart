// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_resource_payment_method_options_resource_card_resource_installment.dart';

/// auto generated
/// This hash contains the card payment method options.
class ConfirmationTokensResourcePaymentMethodOptionsResourceCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The `cvc_update` Token collected from the Payment Element.
  String? cvcToken;

  ///  Installment configuration for payments.
  ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment?
      installments;

  /// Instantiates a new [ConfirmationTokensResourcePaymentMethodOptionsResourceCard] and sets the default values.
  ConfirmationTokensResourcePaymentMethodOptionsResourceCard()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensResourcePaymentMethodOptionsResourceCard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensResourcePaymentMethodOptionsResourceCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cvc_token'] = (node) => cvcToken = node.getStringValue();
    deserializerMap[
        'installments'] = (node) => installments = node.getObjectValue<
            ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment>(
        ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('cvc_token', cvcToken);
    writer.writeObjectValue<
            ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment>(
        'installments', installments);
    writer.writeAdditionalData(additionalData);
  }
}
