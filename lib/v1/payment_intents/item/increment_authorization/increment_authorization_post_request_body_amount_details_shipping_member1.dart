// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './increment_authorization_post_request_body_amount_details_shipping_member1_amount.dart';
import './increment_authorization_post_request_body_amount_details_shipping_member1_from_postal_code.dart';
import './increment_authorization_post_request_body_amount_details_shipping_member1_to_postal_code.dart';

/// auto generated
class IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1Amount?
      amount;

  ///  The from_postal_code property
  IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1FromPostalCode?
      fromPostalCode;

  ///  The to_postal_code property
  IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1ToPostalCode?
      toPostalCode;

  /// Instantiates a new [IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1] and sets the default values.
  IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1Amount>(
        IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1Amount
            .createFromDiscriminatorValue);
    deserializerMap[
        'from_postal_code'] = (node) => fromPostalCode = node.getObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1FromPostalCode>(
        IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1FromPostalCode
            .createFromDiscriminatorValue);
    deserializerMap[
        'to_postal_code'] = (node) => toPostalCode = node.getObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1ToPostalCode>(
        IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1ToPostalCode
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1Amount>(
        'amount', amount);
    writer.writeObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1FromPostalCode>(
        'from_postal_code', fromPostalCode);
    writer.writeObjectValue<
            IncrementAuthorizationPostRequestBodyAmountDetailsShippingMember1ToPostalCode>(
        'to_postal_code', toPostalCode);
    writer.writeAdditionalData(additionalData);
  }
}
