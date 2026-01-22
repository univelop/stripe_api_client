// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './card_generated_from_payment_method_details.dart';
import './payment_method_card_generated_card_setup_attempt.dart';

/// auto generated
class PaymentMethodCardGeneratedCard implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The charge that created this object.
  String? charge;

  ///  Transaction-specific details of the payment method used in the payment.
  CardGeneratedFromPaymentMethodDetails? paymentMethodDetails;

  ///  The ID of the SetupAttempt that generated this PaymentMethod, if any.
  PaymentMethodCardGeneratedCardSetupAttempt? setupAttempt;

  /// Instantiates a new [PaymentMethodCardGeneratedCard] and sets the default values.
  PaymentMethodCardGeneratedCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodCardGeneratedCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodCardGeneratedCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['charge'] = (node) => charge = node.getStringValue();
    deserializerMap['payment_method_details'] = (node) => paymentMethodDetails =
        node.getObjectValue<CardGeneratedFromPaymentMethodDetails>(
            CardGeneratedFromPaymentMethodDetails.createFromDiscriminatorValue);
    deserializerMap['setup_attempt'] = (node) => setupAttempt =
        node.getObjectValue<PaymentMethodCardGeneratedCardSetupAttempt>(
            PaymentMethodCardGeneratedCardSetupAttempt
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('charge', charge);
    writer.writeObjectValue<CardGeneratedFromPaymentMethodDetails>(
        'payment_method_details', paymentMethodDetails);
    writer.writeObjectValue<PaymentMethodCardGeneratedCardSetupAttempt>(
        'setup_attempt', setupAttempt);
    writer.writeAdditionalData(additionalData);
  }
}
