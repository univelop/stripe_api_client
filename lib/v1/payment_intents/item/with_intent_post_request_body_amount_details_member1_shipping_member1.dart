// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_amount_details_member1_shipping_member1_amount.dart';
import './with_intent_post_request_body_amount_details_member1_shipping_member1_from_postal_code.dart';
import './with_intent_post_request_body_amount_details_member1_shipping_member1_to_postal_code.dart';

/// auto generated
class WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1Amount? amount;

  ///  The from_postal_code property
  WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1FromPostalCode?
      fromPostalCode;

  ///  The to_postal_code property
  WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1ToPostalCode?
      toPostalCode;

  /// Instantiates a new [WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1] and sets the default values.
  WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1Amount>(
        WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1Amount
            .createFromDiscriminatorValue);
    deserializerMap[
        'from_postal_code'] = (node) => fromPostalCode = node.getObjectValue<
            WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1FromPostalCode>(
        WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1FromPostalCode
            .createFromDiscriminatorValue);
    deserializerMap[
        'to_postal_code'] = (node) => toPostalCode = node.getObjectValue<
            WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1ToPostalCode>(
        WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1ToPostalCode
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1Amount>(
        'amount', amount);
    writer.writeObjectValue<
            WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1FromPostalCode>(
        'from_postal_code', fromPostalCode);
    writer.writeObjectValue<
            WithIntentPostRequestBodyAmountDetailsMember1ShippingMember1ToPostalCode>(
        'to_postal_code', toPostalCode);
    writer.writeAdditionalData(additionalData);
  }
}
