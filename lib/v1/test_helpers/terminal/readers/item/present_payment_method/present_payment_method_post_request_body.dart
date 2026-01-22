// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './present_payment_method_post_request_body_card.dart';
import './present_payment_method_post_request_body_card_present.dart';
import './present_payment_method_post_request_body_interac_present.dart';
import './present_payment_method_post_request_body_type.dart';

/// auto generated
class PresentPaymentMethodPostRequestBody implements Parsable {
  ///  Simulated on-reader tip amount.
  int? amountTip;

  ///  Simulated data for the card payment method.
  PresentPaymentMethodPostRequestBodyCard? card;

  ///  Simulated data for the card_present payment method.
  PresentPaymentMethodPostRequestBodyCardPresent? cardPresent;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Simulated data for the interac_present payment method.
  PresentPaymentMethodPostRequestBodyInteracPresent? interacPresent;

  ///  Simulated payment type.
  PresentPaymentMethodPostRequestBodyType? type_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PresentPaymentMethodPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PresentPaymentMethodPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_tip'] = (node) => amountTip = node.getIntValue();
    deserializerMap['card'] = (node) => card = node.getObjectValue<
            PresentPaymentMethodPostRequestBodyCard>(
        PresentPaymentMethodPostRequestBodyCard.createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<PresentPaymentMethodPostRequestBodyCardPresent>(
            PresentPaymentMethodPostRequestBodyCardPresent
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['interac_present'] = (node) => interacPresent =
        node.getObjectValue<PresentPaymentMethodPostRequestBodyInteracPresent>(
            PresentPaymentMethodPostRequestBodyInteracPresent
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PresentPaymentMethodPostRequestBodyType>(
            (stringValue) => PresentPaymentMethodPostRequestBodyType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_tip', amountTip);
    writer.writeObjectValue<PresentPaymentMethodPostRequestBodyCard>(
        'card', card);
    writer.writeObjectValue<PresentPaymentMethodPostRequestBodyCardPresent>(
        'card_present', cardPresent);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<PresentPaymentMethodPostRequestBodyInteracPresent>(
        'interac_present', interacPresent);
    writer.writeEnumValue<PresentPaymentMethodPostRequestBodyType>(
        'type', type_, (e) => e?.value);
  }
}
