// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payments_primitives_payment_records_resource_processor_details_resource_custom_details.dart';
import './payments_primitives_payment_records_resource_processor_details_type.dart';

/// auto generated
/// Processor information associated with this payment.
class PaymentsPrimitivesPaymentRecordsResourceProcessorDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Custom processors represent payment processors not modeled directly inthe Stripe API. This resource consists of details about the custom processorused for this payment attempt.
  PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails?
      custom;

  ///  The processor used for this payment attempt.
  PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType? type_;

  /// Instantiates a new [PaymentsPrimitivesPaymentRecordsResourceProcessorDetails] and sets the default values.
  PaymentsPrimitivesPaymentRecordsResourceProcessorDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentsPrimitivesPaymentRecordsResourceProcessorDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentsPrimitivesPaymentRecordsResourceProcessorDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom'] = (node) => custom = node.getObjectValue<
            PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails>(
        PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType>(
        (stringValue) =>
            PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails>(
        'custom', custom);
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
