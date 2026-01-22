// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentNextActionCardAwaitNotification
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The time that payment will be attempted. If customer approval is required, they need to provide approval before this time.
  int? chargeAttemptAt;

  ///  For payments greater than INR 15000, the customer must provide explicit approval of the payment with their bank. For payments of lower amount, no customer action is required.
  bool? customerApprovalRequired;

  /// Instantiates a new [PaymentIntentNextActionCardAwaitNotification] and sets the default values.
  PaymentIntentNextActionCardAwaitNotification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionCardAwaitNotification
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentNextActionCardAwaitNotification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['charge_attempt_at'] =
        (node) => chargeAttemptAt = node.getIntValue();
    deserializerMap['customer_approval_required'] =
        (node) => customerApprovalRequired = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('charge_attempt_at', chargeAttemptAt);
    writer.writeBoolValue('customer_approval_required',
        value: customerApprovalRequired);
    writer.writeAdditionalData(additionalData);
  }
}
