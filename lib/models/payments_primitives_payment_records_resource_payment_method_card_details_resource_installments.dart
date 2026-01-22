// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_installment_plan.dart';

/// auto generated
class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The plan property
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentPlan?
      plan;

  /// Instantiates a new [PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments] and sets the default values.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['plan'] = (node) => plan = node.getObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentPlan>(
        PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentPlan
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentPlan>(
        'plan', plan);
    writer.writeAdditionalData(additionalData);
  }
}
