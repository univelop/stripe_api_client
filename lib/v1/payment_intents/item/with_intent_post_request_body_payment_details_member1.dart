// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_details_member1_customer_reference.dart';
import './with_intent_post_request_body_payment_details_member1_order_reference.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentDetailsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer_reference property
  WithIntentPostRequestBodyPaymentDetailsMember1CustomerReference?
      customerReference;

  ///  The order_reference property
  WithIntentPostRequestBodyPaymentDetailsMember1OrderReference? orderReference;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentDetailsMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentDetailsMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentDetailsMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentDetailsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_reference'] = (node) => customerReference =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentDetailsMember1CustomerReference>(
            WithIntentPostRequestBodyPaymentDetailsMember1CustomerReference
                .createFromDiscriminatorValue);
    deserializerMap['order_reference'] = (node) => orderReference =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentDetailsMember1OrderReference>(
            WithIntentPostRequestBodyPaymentDetailsMember1OrderReference
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentDetailsMember1CustomerReference>(
        'customer_reference', customerReference);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentDetailsMember1OrderReference>(
        'order_reference', orderReference);
    writer.writeAdditionalData(additionalData);
  }
}
