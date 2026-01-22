// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_amount_details_shipping_member1_amount.dart';
import './capture_post_request_body_amount_details_shipping_member1_from_postal_code.dart';
import './capture_post_request_body_amount_details_shipping_member1_to_postal_code.dart';

/// auto generated
class CapturePostRequestBodyAmountDetailsShippingMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  CapturePostRequestBodyAmountDetailsShippingMember1Amount? amount;

  ///  The from_postal_code property
  CapturePostRequestBodyAmountDetailsShippingMember1FromPostalCode?
      fromPostalCode;

  ///  The to_postal_code property
  CapturePostRequestBodyAmountDetailsShippingMember1ToPostalCode? toPostalCode;

  /// Instantiates a new [CapturePostRequestBodyAmountDetailsShippingMember1] and sets the default values.
  CapturePostRequestBodyAmountDetailsShippingMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyAmountDetailsShippingMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CapturePostRequestBodyAmountDetailsShippingMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getObjectValue<
            CapturePostRequestBodyAmountDetailsShippingMember1Amount>(
        CapturePostRequestBodyAmountDetailsShippingMember1Amount
            .createFromDiscriminatorValue);
    deserializerMap[
        'from_postal_code'] = (node) => fromPostalCode = node.getObjectValue<
            CapturePostRequestBodyAmountDetailsShippingMember1FromPostalCode>(
        CapturePostRequestBodyAmountDetailsShippingMember1FromPostalCode
            .createFromDiscriminatorValue);
    deserializerMap['to_postal_code'] = (node) => toPostalCode =
        node.getObjectValue<
                CapturePostRequestBodyAmountDetailsShippingMember1ToPostalCode>(
            CapturePostRequestBodyAmountDetailsShippingMember1ToPostalCode
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CapturePostRequestBodyAmountDetailsShippingMember1Amount>(
        'amount', amount);
    writer.writeObjectValue<
            CapturePostRequestBodyAmountDetailsShippingMember1FromPostalCode>(
        'from_postal_code', fromPostalCode);
    writer.writeObjectValue<
            CapturePostRequestBodyAmountDetailsShippingMember1ToPostalCode>(
        'to_postal_code', toPostalCode);
    writer.writeAdditionalData(additionalData);
  }
}
