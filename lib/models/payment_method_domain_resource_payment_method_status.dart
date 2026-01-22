// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_domain_resource_payment_method_status_details.dart';
import './payment_method_domain_resource_payment_method_status_status.dart';

/// auto generated
/// Indicates the status of a specific payment method on a payment method domain.
class PaymentMethodDomainResourcePaymentMethodStatus
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The status of the payment method on the domain.
  PaymentMethodDomainResourcePaymentMethodStatusStatus? status;

  ///  Contains additional details about the status of a payment method for a specific payment method domain.
  PaymentMethodDomainResourcePaymentMethodStatusDetails? statusDetails;

  /// Instantiates a new [PaymentMethodDomainResourcePaymentMethodStatus] and sets the default values.
  PaymentMethodDomainResourcePaymentMethodStatus() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDomainResourcePaymentMethodStatus
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodDomainResourcePaymentMethodStatus();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<PaymentMethodDomainResourcePaymentMethodStatusStatus>(
            (stringValue) =>
                PaymentMethodDomainResourcePaymentMethodStatusStatus.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['status_details'] = (node) => statusDetails = node
        .getObjectValue<PaymentMethodDomainResourcePaymentMethodStatusDetails>(
            PaymentMethodDomainResourcePaymentMethodStatusDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodDomainResourcePaymentMethodStatusStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<
            PaymentMethodDomainResourcePaymentMethodStatusDetails>(
        'status_details', statusDetails);
    writer.writeAdditionalData(additionalData);
  }
}
