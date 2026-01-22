// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_naver_pay_funding.dart';

/// auto generated
class PaymentMethodNaverPay implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Uniquely identifies this particular Naver Pay account. You can use this attribute to check whether two Naver Pay accounts are the same.
  String? buyerId;

  ///  Whether to fund this transaction with Naver Pay points or a card.
  PaymentMethodNaverPayFunding? funding;

  /// Instantiates a new [PaymentMethodNaverPay] and sets the default values.
  PaymentMethodNaverPay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodNaverPay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodNaverPay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['buyer_id'] = (node) => buyerId = node.getStringValue();
    deserializerMap['funding'] = (node) => funding =
        node.getEnumValue<PaymentMethodNaverPayFunding>((stringValue) =>
            PaymentMethodNaverPayFunding.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('buyer_id', buyerId);
    writer.writeEnumValue<PaymentMethodNaverPayFunding>(
        'funding', funding, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
