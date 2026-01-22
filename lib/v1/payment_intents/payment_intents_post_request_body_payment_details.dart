// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_details_customer_reference.dart';
import './payment_intents_post_request_body_payment_details_order_reference.dart';

/// auto generated
/// Provides industry-specific information about the charge.
class PaymentIntentsPostRequestBodyPaymentDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer_reference property
  PaymentIntentsPostRequestBodyPaymentDetailsCustomerReference?
      customerReference;

  ///  The order_reference property
  PaymentIntentsPostRequestBodyPaymentDetailsOrderReference? orderReference;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentDetails] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_reference'] = (node) => customerReference =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentDetailsCustomerReference>(
            PaymentIntentsPostRequestBodyPaymentDetailsCustomerReference
                .createFromDiscriminatorValue);
    deserializerMap['order_reference'] = (node) => orderReference =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentDetailsOrderReference>(
            PaymentIntentsPostRequestBodyPaymentDetailsOrderReference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentDetailsCustomerReference>(
        'customer_reference', customerReference);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentDetailsOrderReference>(
        'order_reference', orderReference);
    writer.writeAdditionalData(additionalData);
  }
}
