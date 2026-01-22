// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_card_installments_plan_interval.dart';
import './payment_method_details_card_installments_plan_type.dart';

/// auto generated
class PaymentMethodDetailsCardInstallmentsPlan
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
  int? count;

  ///  For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.One of `month`.
  PaymentMethodDetailsCardInstallmentsPlanInterval? interval;

  ///  Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
  PaymentMethodDetailsCardInstallmentsPlanType? type_;

  /// Instantiates a new [PaymentMethodDetailsCardInstallmentsPlan] and sets the default values.
  PaymentMethodDetailsCardInstallmentsPlan() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsCardInstallmentsPlan createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsCardInstallmentsPlan();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['count'] = (node) => count = node.getIntValue();
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<PaymentMethodDetailsCardInstallmentsPlanInterval>(
            (stringValue) => PaymentMethodDetailsCardInstallmentsPlanInterval
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentMethodDetailsCardInstallmentsPlanType>(
            (stringValue) => PaymentMethodDetailsCardInstallmentsPlanType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('count', count);
    writer.writeEnumValue<PaymentMethodDetailsCardInstallmentsPlanInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeEnumValue<PaymentMethodDetailsCardInstallmentsPlanType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
