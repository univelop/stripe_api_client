// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_card_installments_plan.dart';

/// auto generated
/// Installment configuration for payments.
class ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The plan property
  PaymentMethodDetailsCardInstallmentsPlan? plan;

  /// Instantiates a new [ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment] and sets the default values.
  ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['plan'] = (node) => plan = node.getObjectValue<
            PaymentMethodDetailsCardInstallmentsPlan>(
        PaymentMethodDetailsCardInstallmentsPlan.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodDetailsCardInstallmentsPlan>(
        'plan', plan);
    writer.writeAdditionalData(additionalData);
  }
}
