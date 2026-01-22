// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Custom processors represent payment processors not modeled directly inthe Stripe API. This resource consists of details about the custom processorused for this payment attempt.
class PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
  String? paymentReference;

  /// Instantiates a new [PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails] and sets the default values.
  PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_reference'] =
        (node) => paymentReference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('payment_reference', paymentReference);
    writer.writeAdditionalData(additionalData);
  }
}
