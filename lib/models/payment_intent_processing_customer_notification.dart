// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentProcessingCustomerNotification
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether customer approval has been requested for this payment. For payments greater than INR 15000 or mandate amount, the customer must provide explicit approval of the payment with their bank.
  bool? approvalRequested;

  ///  If customer approval is required, they need to provide approval before this time.
  int? completesAt;

  /// Instantiates a new [PaymentIntentProcessingCustomerNotification] and sets the default values.
  PaymentIntentProcessingCustomerNotification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentProcessingCustomerNotification
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentProcessingCustomerNotification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['approval_requested'] =
        (node) => approvalRequested = node.getBoolValue();
    deserializerMap['completes_at'] =
        (node) => completesAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('approval_requested', value: approvalRequested);
    writer.writeIntValue('completes_at', completesAt);
    writer.writeAdditionalData(additionalData);
  }
}
