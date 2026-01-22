// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_processing_customer_notification.dart';

/// auto generated
class PaymentIntentCardProcessing implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer_notification property
  PaymentIntentProcessingCustomerNotification? customerNotification;

  /// Instantiates a new [PaymentIntentCardProcessing] and sets the default values.
  PaymentIntentCardProcessing() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentCardProcessing createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentCardProcessing();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_notification'] = (node) => customerNotification =
        node.getObjectValue<PaymentIntentProcessingCustomerNotification>(
            PaymentIntentProcessingCustomerNotification
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentIntentProcessingCustomerNotification>(
        'customer_notification', customerNotification);
    writer.writeAdditionalData(additionalData);
  }
}
