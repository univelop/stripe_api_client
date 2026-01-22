// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_card_installments_plan.dart';

/// auto generated
class PaymentMethodOptionsCardInstallments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Installment plans that may be selected for this PaymentIntent.
  Iterable<PaymentMethodDetailsCardInstallmentsPlan>? availablePlans;

  ///  Whether Installments are enabled for this PaymentIntent.
  bool? enabled;

  ///  Installment plan selected for this PaymentIntent.
  PaymentMethodDetailsCardInstallmentsPlan? plan;

  /// Instantiates a new [PaymentMethodOptionsCardInstallments] and sets the default values.
  PaymentMethodOptionsCardInstallments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodOptionsCardInstallments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodOptionsCardInstallments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['available_plans'] = (node) => availablePlans = node
        .getCollectionOfObjectValues<PaymentMethodDetailsCardInstallmentsPlan>(
            PaymentMethodDetailsCardInstallmentsPlan
                .createFromDiscriminatorValue);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['plan'] = (node) => plan = node.getObjectValue<
            PaymentMethodDetailsCardInstallmentsPlan>(
        PaymentMethodDetailsCardInstallmentsPlan.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            PaymentMethodDetailsCardInstallmentsPlan>(
        'available_plans', availablePlans);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<PaymentMethodDetailsCardInstallmentsPlan>(
        'plan', plan);
    writer.writeAdditionalData(additionalData);
  }
}
