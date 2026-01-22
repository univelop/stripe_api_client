// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_amount_details_shipping_member1_amount.dart';
import './payment_intents_post_request_body_amount_details_shipping_member1_from_postal_code.dart';
import './payment_intents_post_request_body_amount_details_shipping_member1_to_postal_code.dart';

/// auto generated
class PaymentIntentsPostRequestBodyAmountDetailsShippingMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  PaymentIntentsPostRequestBodyAmountDetailsShippingMember1Amount? amount;

  ///  The from_postal_code property
  PaymentIntentsPostRequestBodyAmountDetailsShippingMember1FromPostalCode?
      fromPostalCode;

  ///  The to_postal_code property
  PaymentIntentsPostRequestBodyAmountDetailsShippingMember1ToPostalCode?
      toPostalCode;

  /// Instantiates a new [PaymentIntentsPostRequestBodyAmountDetailsShippingMember1] and sets the default values.
  PaymentIntentsPostRequestBodyAmountDetailsShippingMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyAmountDetailsShippingMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyAmountDetailsShippingMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            PaymentIntentsPostRequestBodyAmountDetailsShippingMember1Amount>(
        PaymentIntentsPostRequestBodyAmountDetailsShippingMember1Amount
            .createFromDiscriminatorValue);
    deserializerMap[
        'from_postal_code'] = (node) => fromPostalCode = node.getObjectValue<
            PaymentIntentsPostRequestBodyAmountDetailsShippingMember1FromPostalCode>(
        PaymentIntentsPostRequestBodyAmountDetailsShippingMember1FromPostalCode
            .createFromDiscriminatorValue);
    deserializerMap[
        'to_postal_code'] = (node) => toPostalCode = node.getObjectValue<
            PaymentIntentsPostRequestBodyAmountDetailsShippingMember1ToPostalCode>(
        PaymentIntentsPostRequestBodyAmountDetailsShippingMember1ToPostalCode
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyAmountDetailsShippingMember1Amount>(
        'amount', amount);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyAmountDetailsShippingMember1FromPostalCode>(
        'from_postal_code', fromPostalCode);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyAmountDetailsShippingMember1ToPostalCode>(
        'to_postal_code', toPostalCode);
    writer.writeAdditionalData(additionalData);
  }
}
